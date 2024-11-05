%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Created By Amirhossein Douzandeh %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{cvhari}
\LoadClass{article}

%%%%%%%%%%%%%%% Formatting %%%%%%%%%%%%%%% 
\usepackage[default]{lato}
\usepackage{geometry}
\usepackage{fancyhdr}
\usepackage{setspace}
\usepackage{ragged2e}
\pagestyle{fancy}

%%%%%%%%%%%%%%% Graphics %%%%%%%%%%%%%%% 
\usepackage[most]{tcolorbox}
\usepackage{xcolor}
\usepackage{tikz}
\tcbuselibrary{breakable}

%%%%%%%%%%%%%%% Miscellaneous %%%%%%%%%%%%%%% 
\usepackage{hyperref}
\usepackage{lipsum}

%%%%%%%%%%%%%%% Define colors %%%%%%%%%%%%%%% 
\definecolor{DodgerBlue}{HTML}{4F83FF}
\definecolor{Black}{HTML}{000000}

\colorlet{accent}{DodgerBlue} %Black!90 for print
\colorlet{body}{Black!80}

%%%%%%%%%%%%%%% Margins %%%%%%%%%%%%%%% 
\geometry{
  a4paper,
  left=2cm,
  right=2cm,
  bottom=2.5cm,
  top=1cm
}

%%%%%%%%%%%%%%% Empty headers %%%%%%%%%%%%%%% 
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\baselinestretch}{1.5}


%%%%%%%%%%%%%%% Title of the letter %%%%%%%%%%%%%%% 
\newcommand{\name}[2]{
    % Name
    \Huge
    \raggedright \textbf{#1} \par
    \vspace*{0.3em}
    % Profession
    \LARGE
    \raggedright #2 
    \normalsize \par
    
    \begin{tikzpicture}
        \fill[DodgerBlue] (0, 0) rectangle (17,0.1);
    \end{tikzpicture}
    
    \vspace{2em}
}

%%%%%%%%%%%%%%% Person that receives the;etter %%%%%%%%%%%%%%% 
\newcommand{\receiver}[1]{
    \Large
    \raggedright \textbf{To: #1}
    \normalsize \par \vspace{1em}
}

%%%%%%%%%%%%%%% Paragraph of a letter %%%%%%%%%%%%%%% 
\newcommand{\para}[1]{
    \setstretch{1.4}
    \large \justify{#1}
    \normalsize \par \vspace{0.8em}
}

%%%%%%%%%%%%%%% Bottom of the letter %%%%%%%%%%%%%%% 
\newcommand{\bottom}[4]{
    %%% Contact info in the footer %%%
    \fancyfoot{
        \normalsize
        \raggedright #1
        \hspace{5pt}\color{accent}{$\bullet$}\hspace{5pt} \color{black}{#2}
        \hspace{5pt}\color{accent}{$\bullet$}\hspace{5pt} \color{black}{\href{mailto:#3}{#3}}
        \hspace{5pt}\color{accent}{$\bullet$}\hspace{5pt} \color{black}{\href{https://www.linkedin.com/in/#4}{LinkedIn Profile}}
        \vspace{0.5em}
        
        %%% Draw a rule under the footer %%%
        \begin{tikzpicture}
            \fill[DodgerBlue] (0, 0) rectangle (17,0.1);
        \end{tikzpicture}
    }
}
