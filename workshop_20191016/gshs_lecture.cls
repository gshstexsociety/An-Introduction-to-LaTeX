\ProvidesClass{gshs_lecture}
\LoadClass[pdftex]{beamer}
\usetheme{Berkeley}

\usepackage{xcolor}
\usepackage{amssymb,amsmath,graphicx}
\usepackage{etoolbox}
\usepackage{kotex}
\usepackage{tikz}
\usepackage{listings}

%% Color Setting %%
\definecolor{Grey}{rgb}{0.6,0.6,0.6}
\definecolor{GSHSred}{RGB}{105,0,0}
\definecolor{GSHSRED}{RGB}{80,0,0}
\definecolor{gshsred}{RGB}{240,210,170}
\setbeamercolor{title}{bg=white,fg=GSHSred}
\setbeamercolor{author}{fg=GSHSred}
\setbeamercolor{institute}{fg=GSHSred}
\setbeamercolor{date}{fg=GSHSred}
\setbeamercolor{logo}{bg=GSHSred}
\setbeamercolor{sidebar}{bg=GSHSred}
\setbeamercolor{frametitle}{bg=white,fg=GSHSred}
\setbeamercolor{section in sidebar}{use=sidebar,bg=white,fg=sidebar.bg}
\setbeamercolor{subsection in sidebar}{parent=section in sidebar}
\setbeamercolor{subsubsection in sidebar}{parent=subsection in sidebar}
\setbeamercolor{section in toc}{bg=white,fg=GSHSRED}
\setbeamercolor{item}{fg=GSHSred}
\setbeamercolor{block title}{bg=GSHSRED,fg=white}
\setbeamercolor{block body}{bg=black!7,fg=black}
\AtBeginEnvironment{theorem}{%
  \setbeamercolor{block title}{fg=white,bg=blue!50!black}
  \setbeamercolor{block body}{bg=blue!10!white}
}
\AtBeginEnvironment{definition}{%
  \setbeamercolor{block title}{fg=white,bg=black}
  \setbeamercolor{block body}{bg=black!10!white}
}

%% Frametitle Setting %%
\setbeamerfont{frametitle}{series=\bfseries}
\setbeamertemplate{frametitle}
{ \vspace*{-10mm}
  \leavevmode
  \hspace*{3pt}
  \begin{beamercolorbox}[wd=\paperwidth,ht=1ex,dp=1ex]{frametitle}
    \hspace*{7pt}\underline{\makebox[0.6\paperwidth][l]{
    \Large{\insertframetitle}}}
  \end{beamercolorbox}
}

%% Title Page Setting %%
\setbeamerfont{title}{series=\bfseries}
\setbeamertemplate{title page}{
  %% Background Logo
  \begin{picture}(0,0)%
    \setlength{\unitlength}{1cm}% default
    \protect\put(0,0){%
    \begin{picture}(6,6)(4,10)%
      \includegraphics[width=0.7\paperwidth]{./logo/gshslogo2.jpg}%
    \end{picture}%
    }%
  \end{picture}%
  \vfill
  \vspace*{10mm}
  \raggedleft
  %% Title
  \usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle\par
  %% Subtitle
  \ifx\insertsubtitle\@empty
  \else\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle
  \fi

  \vskip 5mm
  %% Horizontal line
  \usebeamercolor[fg]{title}\hrule height 2pt\hfill
  \vskip 10mm
  %% Author
  \usebeamercolor[fg]{author}\usebeamerfont{author}\insertauthor
  \vskip 1cm
  %% Institute
  \usebeamercolor[fg]{institute}\usebeamerfont{institute}\insertinstitute
  \vskip 1cm
  %% Date
  \usebeamercolor[fg]{date}\usebeamerfont{date}\insertdate
  \vfill
}

%% itemize bullet setting %%
\setbeamertemplate{itemize items}[ball]
\setbeamertemplate{sections/subsections in toc}[ball]

%% block setting %%
\setbeamertemplate{blocks}[rounded][shadow=false]


%% Sidebar setting %%
\logo{\includegraphics[width=8mm]{./logo/gshslogo.png}}

%% Equation setting %%
\renewcommand\mathfamilydefault{\rmdefault}

%% No navigation bar %%
\beamertemplatenavigationsymbolsempty

%% listing setting %%

\lstset
{
    language=[LaTeX]TeX,
    breaklines=true,
    breakindent=0pt,
    basicstyle=\tt\tiny,
    texcsstyle=*\color{GSHSred}\bfseries,
    keywordstyle=\color{blue}\bfseries,
    literate=
    *{\{}{{\textcolor{GSHSred}{\{}}}{1}
     {\}}{{\textcolor{GSHSred}{\}}}}{1}
     {\$}{{\textcolor{GSHSred}{\$}}}{1}
     {\#}{{\textcolor{GSHSred}{\#}}}{1},
    identifierstyle=\color{blue}\bfseries,
    commentstyle=\color{red!70},
}% end of lstset