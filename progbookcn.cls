\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{progbookcn}[Jun, 2018 Yet Another LaTeX Template for Programming or Technical Books]
\LoadClass[a4paper,twoside]{ctexbook}

\RequirePackage{xunicode}
\RequirePackage{color,xcolor}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% hyperref settings
%% 超链接设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \RequirePackage{hyperref}
% \hypersetup{
%   bookmarksnumbered,
%   colorlinks,
%   linkcolor={black},
%   citecolor={black},
%   urlcolor={black}
% }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% graphicx settings
%% 图片设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{graphbox}
\RequirePackage{wrapfig}
\graphicspath{{./figs/}{./figure/}{./figures/}{./image/}{./images/}{./graphics/}{./graphic/}{./pictures/}{./picture/}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% geometry settings
%% 页面设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{
  textwidth=138mm,
  textheight=215mm,
  %% left=27mm,
  %% or
  inner=23mm,
  %% right=27mm,
  %% or
  outer=18mm,
  top=25.4mm, bottom=25.4mm,
  headheight=2.17cm,
  headsep=4mm,
  footskip=12mm,
  heightrounded,
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% fonts settings
%% 字体设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
%% \usepackage{ebgaramond}

%% 开明式：句末点号用占一个汉字宽度，标号和句内点号占半个汉字宽度
\punctstyle{kaiming}

\setmainfont[Ligatures=TeX]{Minion Pro}
\setsansfont{Myriad Pro}
\setmonofont{Courier Std}

\setCJKmainfont[Path=fonts/, BoldFont={方正小标宋_GBK}, ItalicFont={方正楷体_GBK}, BoldItalicFont={方正仿宋_GBK}]{方正书宋_GBK}
\setCJKsansfont[Path=fonts/]{方正黑体_GBK}
\setCJKmonofont[Path=fonts/]{方正中等线_GBK}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

\setCJKfamilyfont{fzss}{方正书宋_GBK}
\newcommand{\fzss}{\CJKfamily{fzss}}

\setCJKfamilyfont{fzxbs}{方正小标宋_GBK}
\newcommand{\fzxbs}{\CJKfamily{fzxbs}}

\setCJKfamilyfont{fzhei}{方正黑体_GBK}
\newcommand{\fzhei}{\CJKfamily{fzhei}}

\setCJKfamilyfont{fzkai}{方正楷体_GBK}
\newcommand{\fzkai}{\CJKfamily{fzkai}}

\setCJKfamilyfont{fzfs}{方正仿宋_GBK}
\newcommand{\fzfs}{\CJKfamily{fzfs}}

\setCJKfamilyfont{fzzdx}{方正中等线_GBK}
\newcommand{\fzzdx}{\CJKfamily{fzzdx}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% titlesec
%% 标题设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[clearempty]{titlesec}
\RequirePackage{zhnumber}

%% Define a HUGE 
\newcommand\HUGE{\@setfontsize\Huge{48}{60}}

%% part
\titleformat{\part} % command
[display] % shape
{\bfseries} % format
{
  \parbox[t]{7em}{\textcolor{gray}{\HUGE \textit{PART~\thepart}}} \hfill \zihao{4}第{\zhnum{part}}部分
  %\rule[3ex]{\textwidth}{.5pt}
  \vspace{1ex}
  \hrule width \hsize height .5pt
} % label
{1pt} % sep
{\vspace{-7ex}\flushright\zihao{2}} % before-code
[] % after-code

%% chapter
\titleformat{\chapter} % command
[display] % shape
{\bfseries} % format
{
  \flushright\zihao{4}第\zhnum{chapter}章
} % label
{1ex} % sep
{
  \hrule width \hsize height .5pt
  \vspace{-2ex}\flushright\zihao{2}
} % before-code
[
\vspace{5ex}
] % after-code


%% section
\titleformat{\section}
[hang]
{\rmfamily}
{\centering\zihao{-3}\bfseries\thesection\enspace}
{1pt}
{\zihao{-3}\bfseries}

%% subsection
\titleformat{\subsection}
[hang]
{\rmfamily}
{\zihao{-4}\bfseries\thesubsection\enspace}
{1pt}
{\zihao{4}\bfseries\filright}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% head and foot
%% 页眉页脚
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\RequirePackage{zhnumber}

\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{.5pt}
\futurelet\TMPfootrule\def\footrule{{\color{violet}\TMPfootrule}}

\renewcommand{\chaptermark}[1]{\markboth{第\zhnum{chapter}章\hspace{1em}#1}{}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\hspace{1em}#1}}
\renewcommand{\sectionmark}[1]{\markright{#1}}

\fancyfoot[LE]{\thepage\quad\vrule\quad\leftmark}
\fancyfoot[RO]{\rightmark\quad\vrule\quad\thepage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% boxes
%% 信息框
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[many]{tcolorbox}
\RequirePackage{fontawesome}

\definecolor{codecolorkeywords}{rgb}{0,0,1}
\definecolor{codecolorcomments}{rgb}{0,0.5,0}
\definecolor{codecolorxmlcomments}{rgb}{0.5,0.5,0.5}
\definecolor{codecolorstrings}{rgb}{0.64,0.08,0.08}
\definecolor{codecolortypes}{rgb}{0.17,0.57,0.68}

\RequirePackage{listings}
\lstdefinelanguage{Cpp}{
  keywords={auto, double, int, struct, break, else, long,
  switch, case, enum, register, typedef, char, extern, 
  return, union, continue, for, signed, void, do, if, static,
  while, default, goto, sizeof, volatile, const, float, short, unsigned, NULL, \#include, \#define},
  sensitive=true,
  alsoletter = {\#},
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]"
}

\tcbuselibrary{skins,listings}
\newtcblisting{mycpptwocol}[1][]{%
  enhanced,
  arc = 3pt,
  outer arc = 3pt,
  colbacktitle = white,
  coltitle = black,
  colback = white,
  colframe = violet,
  boxrule=.5pt,
  attach boxed title to top center = {yshift=-\tcboxedtitleheight/2},
  boxed title style={size=normal,colframe=white,boxrule=0pt},
  listing only,
  fonttitle = \normalfont,
  listing options = {%
    language = Cpp,
    basicstyle = \ttfamily\linespread{1}\small,
    columns=fullflexible,
    multicols = 2,
    % Line numbers
    numbers = left,
    numbersep = 1em,
    xleftmargin = 1em,
    showstringspaces = false,
    % Code design
    keywordstyle=\color{codecolorkeywords},
    commentstyle=\color{codecolorcomments},
    stringstyle=\color{codecolorstrings},
    numberstyle=\small\color{gray},
    breakatwhitespace=false,
    breaklines=true,
    captionpos=t,
    keepspaces=true,
    % Code
    tabsize=4,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    breaklines=true,
  },
  overlay = {%
%     \fill[gray!30] 
%       (interior.north west)
%       rectangle 
%       ([xshift = 2em]interior.south west);
%     \fill[gray!30] 
%       ([xshift = -1em]interior.north)
%       rectangle 
%       ([xshift = 1em]interior.south);
    \draw[violet]
      ([xshift = -1em, yshift = -1em]interior.north) -- 
      ([xshift = -1em]interior.south); 
  },
  /utils/exec = {%
    \def\thelstnumber{%
      \texttt{\csname two@digits\endcsname{\the\value{lstnumber}}}}},
  title = {\ttfamily #1}
}

%% 带标题的文本框
\newtcolorbox{titledbox}[1]{%
  tikznode boxed title,
  enhanced,
  arc=3pt,
  interior style={white},
  attach boxed title to top center = {yshift=-\tcboxedtitleheight/2},
  fonttitle=\normalfont,
  colbacktitle=white,coltitle=black,
  boxed title style={size=normal,colframe=white,boxrule=0pt},
  boxrule=.5pt,
  left=0pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  title={#1}
}

%% 信息
\newtcolorbox{information}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\faInfoCircle
    };
  }
}

%% 关键点
\newtcolorbox{keypoint}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\faKey
    };
  }
}

%% 警告信息
\newtcolorbox{exclamation}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\faExclamationTriangle
    };
  }
}

%% 问题信息
\newtcolorbox{question}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\faQuestionCircle
    };
  }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chinese names
%% 中文名称
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\contentsname}{目\hspace{1em}录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\partname}{部分}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\appendixname}{附录}
\renewcommand{\indexname}{索引}
% listings
\renewcommand{\lstlistingname}{代码}
\renewcommand{\lstlistlistingname}{\lstlistingname 列表}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% global settings
%% 以下是全局格式设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 添加首行缩进，两个字符
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

%% 行距
\linespread{1.5}
