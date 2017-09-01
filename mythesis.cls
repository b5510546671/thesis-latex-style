\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}

%%set page
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}
\RequirePackage[a4paper,top=1.375in,bottom=1in,left=1.5in,right=1in]{geometry}
\raggedright

%%set page number 
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{\thepage}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\setlength{\headheight}{\baselineskip}
\setlength{\headsep}{0.4in}

%%set space between line
%\RequirePackage{setspace}
%\onehalfspace
\renewcommand{\baselinestretch}{1.5}

\RequirePackage{amsmath, amssymb, amsthm} % AMS packages
\RequirePackage{graphicx,color}   % Packages for graphics and color
\RequirePackage{tabularx}
\RequirePackage[T1]{fontenc}  
\RequirePackage{times}
\RequirePackage{multirow}
\RequirePackage{epsfig,epstopdf}
\RequirePackage{lastpage}
\RequirePackage{enumitem}
\RequirePackage[final]{pdfpages}
\RequirePackage{indentfirst}


%%set paragraph
\setlength{\parindent}{0.5in} 
\setlength{\parskip}{\baselineskip}

%%set the separation between floats
\setlength{\textfloatsep}{\parskip}
\setlength{\intextsep}{\parskip}
\setlength{\abovecaptionskip}{\parskip}
\setlength{\belowcaptionskip}{1ex} 
\setlength{\floatsep}{\parskip}
\setlength{\@fptop}{0ex}
%\setlength{\@fpbot}{\parskip}
\setlength{\@fpsep}{\parskip}

%%set caption
\RequirePackage[format=hang, labelsep=none, justification=RaggedRight, singlelinecheck=false]{caption}
\DeclareCaptionLabelFormat{bf-doublespace}{\textbf{#1 #2}\ \ }
\captionsetup{labelformat=bf-doublespace}
\newcommand{\source}[1]{
\vspace{-2ex}
\vspace{\baselineskip}
\textbf{Source:} #1 \hfill
\vspace{\belowcaptionskip}}

%%set name
\renewcommand{\bibname}{LITERATURE CITED}
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\figurename}{Figure}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\tablename}{Table}
\newcommand{\figname}{Fig.~}
\newcommand{\tabname}{Table~}

%%set table of content
\RequirePackage[subfigure]{tocloft}
\RequirePackage[tight,center,normalsize]{subfigure}
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cfttoctitlefont}{\@makeschapterhead}
\renewcommand{\cftloftitlefont}{\@makeschapterhead}
\renewcommand{\cftlottitlefont}{\@makeschapterhead}
\setlength{\cftbeforechapskip}{0ex}
\setlength{\cftbeforesecskip}{0ex}
\setlength{\cftbeforefigskip}{0ex}
\setlength{\cftbeforetabskip}{0ex}
\setlength{\cftbeforetoctitleskip}{-0.55\baselineskip}
\setlength{\cftbeforeloftitleskip}{-0.55\baselineskip}
\setlength{\cftbeforelottitleskip}{-0.55\baselineskip}
\setlength{\cftaftertoctitleskip}{\baselineskip}
\setlength{\cftafterloftitleskip}{\baselineskip}
\setlength{\cftafterlottitleskip}{\baselineskip}
\setlength{\cftsecindent}{1.5ex}
\setlength{\cfttabindent}{2.5ex}
\setlength{\cftfigindent}{2.5ex}
\renewcommand{\cftsecdotsep}{\cftnodots}
\renewcommand{\cftfigdotsep}{\cftnodots}
\renewcommand{\cfttabdotsep}{\cftnodots}
\renewcommand{\cftaftertoctitle}{
\vspace{\baselineskip}
\hfill\textbf{Page}\hspace{-1ex}
}
\renewcommand{\cftafterlottitle}{
\vspace{\baselineskip}
\textbf{\tablename}\hfill\textbf{Page}\hspace{-1ex}
}
\renewcommand{\cftafterloftitle}{
\vspace{\baselineskip}
\textbf{\figurename}\hfill\textbf{Page}\hspace{-1ex}
}
%\cftsetrmarg{6em}
%\renewcommand{\cftfigpresnum}{}
%\renewcommand{\cftfigaftersnum}{}
\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{5}

%%set bib
\RequirePackage[round, colon, authoryear, sort&compress]{natbib}
\setlength{\bibhang}{\parindent} 
\setlength{\bibsep}{\parskip} 

%%set number style
\renewcommand*\thesection{}
\renewcommand*\thesubsection{\arabic{subsection}.}
\renewcommand*\thesubsubsection{\thesubsection\arabic{subsubsection}}
\renewcommand*\theenumi{\arabic{enumi}}
\renewcommand{\labelenumi}{\theenumi.}
\renewcommand*\theenumii{\arabic{enumii}}
\renewcommand{\labelenumii}{\theenumii)}
\renewcommand{\thefigure}{\arabic{figure}}

%%set chapter
\renewcommand{\@makeschapterhead}[1]{%
%\vspace*{50\p@}%
%{\parindent \z@ \raggedright
%\normalfont
%\hrule % horizontal line
%\vspace{5pt}% % add vertical space
{\centering
\interlinepenalty\@M
\large\bfseries #1 \par% chapter title
}
\thispagestyle{fancy}
%%space of equation reset when font size change
\setlength\abovedisplayskip{\baselineskip}
\setlength\belowdisplayskip{\baselineskip} 
%\setlength\abovedisplayshortskip{\baselineskip}
%\setlength\belowdisplayshortskip{\baselineskip} 
%\vspace{-\ratio\baselineskip}% % add vertical space
%\hrule % horizontal line
%\nobreak
%\vskip 40\p@
%}
}

\newcommand{\chaptertitle}[1]{%

    \medskip
    {\centering
    \large\bfseries {#1} \par% chapter title
    }
    \addcontentsline{toc}{chapter}{#1}
}

%%set section
\renewcommand{\section}{\@startsection
{section}% % the name
{1}% % the level
{0mm}% % the indent
{0.01\baselineskip}% % the before skip
{0.01\baselineskip}% % the after skip
{\centering\normalfont\bfseries}} % the style

%%set subsection
\renewcommand{\subsection}{\@startsection
{subsection}% % the name
{2}% % the level
{0mm}% % the indent
{0.01\baselineskip}% % the before skip
{0.01\baselineskip}% % the after skip
{\normalfont\bfseries}} % the style

%%set subsubsection
\renewcommand{\subsubsection}{\@startsection
{subsubsection}% % the name
{3}% % the level
{0.5in}% % the indent
{0.01\baselineskip}% % the before skip
{0.01\baselineskip}% % the after skip
{\normalfont}} % the style

%%set first paragraph of subsubsection
\newenvironment{firstparagraph}
{\setlength{\parindent}{0.9in}}
{\setlength{\parindent}{0.5in}}

\endinput
