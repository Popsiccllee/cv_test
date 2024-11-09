\ProvidesClass{dublin}
\LoadClass[10pt]{article}

\RequirePackage[margin=0cm]{geometry}
\usepackage{microtype}
\usepackage{enumitem}
\usepackage{microtype}
\usepackage{hyperref}
\usepackage{graphicx}
\usepackage{paracol}
\usepackage{tcolorbox}
\usepackage{environ}
\usepackage{adjustbox}
\usepackage{anyfontsize}
\usepackage{ragged2e}
\usepackage{ifthen}
\usepackage{tikz}

%%%%%%%%%%%%%%%%%%%%%%%%%
%% Font Style Settings %%
%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[sfdefault]{roboto}
\linespread{1.2}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define Color Variables %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor}
\definecolor{DGreen}{HTML}{084B41}
\definecolor{Black}{HTML}{000000}
\definecolor{White}{HTML}{FFFFFF}
\definecolor{lightGreen}{HTML}{4D837B}
\definecolor{lightGray}{HTML}{808080}

\colorlet{accent}{DGreen}
\colorlet{body}{Black!80}
\colorlet{white50}{White!50}
\colorlet{lgreen}{lightGreen}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Import FontAwesome Icons %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontawesome}
\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\devsymbol}{\faCode}

%%%%%%%%%%%%%%%%%%%%%%%%
%% Set Skip Variables %%
%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\smallskipamount}{10pt}
\setlength{\medskipamount}{15pt}
\setlength{\bigskipamount}{20pt}
\newcommand{\tinyskip}[0]{
    \vspace{5pt}
}

%%%%%%%%%%%%%%%%%%%
%% Grid Commands %%
%%%%%%%%%%%%%%%%%%%
\NewEnviron{leftpart}[1]{
    \begin{minipage}{#1\textwidth}
        \begin{tcolorbox}[colback=DGreen, boxrule=0pt, height=\textheight,
                          width=\textwidth, sharp corners,
                          left=5mm, right=5mm, top=1cm, bottom=1cm]
            \BODY
        \end{tcolorbox}
    \end{minipage}
}


\NewEnviron{rightpart}[1]{%
    \begin{minipage}{#1\textwidth}
    \begin{tcolorbox}[colback=white, boxrule=0pt, 
                      height=\textheight,
                      left=5mm, right=5mm,
                      top=1cm, bottom=1cm,
                      sharp corners]
            \raggedright
            \color{Black}
            \BODY
        \end{tcolorbox}
    \end{minipage}
}

%%%%%%%%%%%%%%%%%%
%% Avatar Frame %%
%%%%%%%%%%%%%%%%%%
\newcommand{\avatar}[1]{
    \begin{tikzpicture}
        \clip (0,0) circle (1.5cm);
        \node at (0,0) {\includegraphics[width=3cm]{#1}};
    \end{tikzpicture}
}

\newcommand{\fullname}[1]{
    \textcolor{white50}{\textbf{\Huge{#1}}}
}

%%%%%%%%%%%%%%%%%%
%% Profile Info %%
%%%%%%%%%%%%%%%%%%
\newcommand{\intro}[3]{
    \begin{center}
        \avatar{#1} \\
        \medskip
        \fullname{#2} \\
        \textcolor{white50}{\rule{1cm}{1mm}} \\
        \vspace{1mm}
        \textcolor{white50}{\large{#3}} \\
        \bigskip
    \end{center}
    \
}

%%%%%%%%%%%%%%%%%%%%%
%% Profile Details %%
%%%%%%%%%%%%%%%%%%%%%
\newcommand{\printinfo}[2]{\mbox{\textcolor{white50}{#1}\hspace{0.5em}#2\hspace{2em}}}
\newcommand{\printtitle}[1]{\mbox{\textcolor{white50}{\diamondsh}\hspace{0.5em}\Large{#1}\hspace{2em}}}

\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\emailsymbol}{\href{mailto:#1}{#1}}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{\href{tel:#1}{#1}}}
\newcommand{\homepage}[2]{\printinfo{\homepagesymbol}{\href{#2}{#1}}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{\href{http://linkedin.com/in/#1}{#1}}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{\href{http://github.com/#1}{#1}}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\contact}[5]{
    \textcolor{white50}{
        {\Large{Details}\smallskip} \\
        \location{#1} \\
        \mailaddress{#2} \\
        \phone{#3} \\
        \linkedin{#4} \\
        \github{#5} \\
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Progress Bar                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Variables:                  %%
%% #1 = Width                  %%
%% #2 = Height                 %%
%% #3 = Percentage             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example:                    %%
%% \progressbar{5cm}{0.2}{100} %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\progressbar}[3]{
    \begin{tikzpicture}
        % Draw the background bar
        \fill[lightGreen] (0,0) rectangle (#1, #2);
        % Draw the progress bar
        \fill[white] (0,0) rectangle (#1 * #3 / 100, #2);
    \end{tikzpicture}
}

\newcommand{\diamondsh}{%
    \begin{tikzpicture}[baseline=-0.75ex]
        \filldraw[fill=white50, draw=white50] (0, 0) -- (1.5mm, 1.5mm) -- (3mm, 0) -- (1.5mm, -1.5mm) -- cycle;
    \end{tikzpicture}%
}

%%%%%%%%%%%%%%%%%%%%
%% Custom Divider %%
%%%%%%%%%%%%%%%%%%%%
\newcommand{\dotteddivider}{
    \vspace{-0.5cm}
    \begin{center}
        \begin{tikzpicture}
            \draw[dotted, line width=0.5pt] (0,0) -- (10,0); % Adjust length as needed
        \end{tikzpicture}
    \end{center}
    \vspace{-0.5cm}
}

%%%%%%%%%%%%
%% Skills %%
%%%%%%%%%%%%
\newcommand{\skillset}[2]{
    \raggedright{\small{#1}} \\
    \progressbar{5cm}{0.2}{#2} \\
    \tinyskip
}

\newcommand{\whitesect}[2]{
    \textcolor{white50}{
        \\
        {\Large{#1}\smallskip} \\
        #2
    }
}

\newcommand{\sect}[2]{
    \textcolor{body}{
        \\
        {\Large{\textbf{#1}}\smallskip} \\
        #2
    }
}

\newcommand{\expset}[3]{
    \textcolor{body}{
        \textbf{#1} \\
        \textcolor{lightGray}{\footnotesize{#2}} \\
        \smallskip
        \setlength{\leftmargini}{0.75cm}
        #3
    }
}

\newcommand{\eduset}[2]{
    \textcolor{body}{
        \textbf{#1} \\
        \textcolor{lightGray}{\footnotesize{#2}} \\
        \smallskip
    }
}

\newcommand{\referenceset}[3]{
    \textcolor{body}{
        \textbf{#1} \\
        \textcolor{lightGray}{{\href{mailto:#2}{#2}} \hspace{5pt} $|$ \hspace{5pt} {\href{tel:#3}{#3}}}  \\
        \smallskip
    }
}
