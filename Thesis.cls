%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template. 
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{verbatim}

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\usepackage{pdfpages}

%\newcommand\Declaration[1]{
%%\btypeout{Declaration of Authorship}
%%\addtotoc{Declaration of Authorship}
%%\thispagestyle{plain}
%\thispagestyle{empty}
%\setmarginsrb{0mm}{0mm}{0mm}{0mm}{0pt}{0mm}{0pt}{0mm}
%%\setmarginsrb {0}  % left margin
              %%{0}  % top margin
              %%{0}  % right margin
              %%{0}  % bottom margin
              %%{0}  % head height
              %%{0}  % head sep
              %%{0}  % foot height
              %%{0}  % foot sep
%%\null\vfil
%%\vskip 60\p@
%%\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%%\vskip 60\p@
%%{\normalsize #1}
%{#1}
%%\vfil\vfil\null
%%\cleardoublepage
%}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

%\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)


\usepackage{fontspec}
\usepackage{polyglossia}
\setmainlanguage[Script=Cyrillic]{serbian}
\setotherlanguage{english}
\setmainfont{Times New Roman}
\newfontfamily{\cyrillicfonttt}[Mapping=ascii-to-serbian]{Courier New}
%\setmonofont{Courier New}

%\DeclareLanguageMapping{serbian}{english}  % this is needed for \DefineBibliographyStrings{hebrew}
%\DefineBibliographyStrings{english}{%
  %bibliography = {Литература},%
	%references = {Литература},%
	%in = {In},%
	%andothers = {\em et\addabbrvspace al\adddot},%
%}

\addto\captionsserbian{%
	\renewcommand{\contentsname}{Садржај}%
	%%\renewcommand{\equationname}{Једначина}
	\renewcommand{\chaptername}{Поглавље}%
	%%\renewcommand{\sectionname}{Одељак}%
	\renewcommand{\appendixname}{Додатак}%
	\renewcommand{\figurename}{Слика}%
	\renewcommand{\tablename}{Табела}%
}

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb { 30mm}  % left margin
              { 30mm}  % top margin
              { 30mm}  % right margin
              { 30mm}  % bottom margin
              {  20pt}  % head height
              {0.25in}  % head sep
              {   9pt}  % foot height
              { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
%\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
%\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
%\chead{}\lfoot{}\rfoot{}\cfoot{}
%\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}\fancyfoot[R]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace,mathtools,slashed,bbm}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc,justification=justified]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Слика~\ref{#1}}
\newcommand{\tref}[1]{Табела~\ref{#1}}
\newcommand{\eref}[1]{Једначина~\ref{#1}}
\newcommand{\cref}[1]{Поглавље~\ref{#1}}
\newcommand{\sref}[1]{Одељак~\ref{#1}}
\newcommand{\aref}[1]{Додатак~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\THESISTITLE}[1]{\def\TTITLE{#1}}
\newcommand*{\naslovteze}[1]{\def\nteze{#1}}
\newcommand*{\NASLOVTEZE}[1]{\def\NTEZE{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

\thesistitle{Studies of Higgs boson production associated to a top quark pair in the CMS experiment at CERN} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\THESISTITLE{STUDIES OF HIGGS BOSON PRODUCTION ASSOCIATED TO A TOP QUARK PAIR IN THE CMS EXPERIMENT AT CERN} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\naslovteze{Проучавање продукције Хигс бозона придруженог пару топ кваркова у експерименту CMS у CERN-у} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\NASLOVTEZE{ПРОУЧАВАЊЕ ПРОДУКЦИЈЕ ХИГС БОЗОНА ПРИДРУЖЕНОГ ПАРУ ТОП КВАРКОВА У ЕКСПЕРИМЕНТУ CMS У CERN-У} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\supervisor{Dr. Miloš \textsc{Đorđević}} % You supervisor's name - this is used in the title page
%-------------------------------------------------   
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------   
\degree{Doctor of Philosophy} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------   
\authors{Predrag \textsc{Ćirković}} % Your name - this is used in the title page and abstract
%-------------------------------------------------   
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------   
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------   
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------   
\university{\texorpdfstring{\href{http://www.bg.ac.rs} % Your university's URL
                {University of Belgrade}} % Your university's name - this is currently used in the title page
                {University of Belgrade}}
%-------------------------------------------------   
\UNIVERSITY{\texorpdfstring{\href{http://www.bg.ac.rs} % Your university's URL
                {UNIVERSITY OF BELGRADE}} % Your university's name in capitals - this is currently used in the abstract page
                {UNIVERSITY OF BLEGRADE}}
%-------------------------------------------------                
\department{\texorpdfstring{\href{http://www.ff.bg.ac.rs/} % Your department's URL
                {Physics of Nuclei and Particles}} % Your department's name - used in the title page and abstract
                {Physics of Nuclei and Particles}}
%-------------------------------------------------                
\DEPARTMENT{\texorpdfstring{\href{http://www.ff.bg.ac.rs/} % Your department's URL
                {PHYSICS OF NICLEI AND PARTICLES}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {PHYSICS OF NICLEI AND PARTICLES}}
%-------------------------------------------------                
\group{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {CMS Belgrade Group}} % Your research group's name - this is currently used in the title page 
                {CMS Belgrade Group}}
%-------------------------------------------------                
\GROUP{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {CMS BELGRADE GROUP}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
                {CMS BELGRADE GROUP}}
%-------------------------------------------------                
\faculty{\texorpdfstring{\href{http://www.ff.bg.ac.rs/} % Your faculty's URL
                {Faculty of Physics}} % Your faculty's name - this is currently used in the abstract page
                {Faculty of Physics}}
%-------------------------------------------------                
\FACULTY{\texorpdfstring{\href{http://www.ff.bg.ac.rs/} % Your faculty's URL
                {FACULTY OF PHYSICS}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
                {FACULTY OF PHYSICS}}
%----------------------------------------------------------------------------------------    

% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted in partial fulfillment for the \par}
      {\large degree of \degreename \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par} 
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  %\thispagestyle{empty}
	\thispagestyle{plain}
  \null\vfil
  \begin{center}
%    \setlength{\parskip}{0pt}
%    {\normalsize \UNIVNAME \par} % University name in capitals
%    \bigskip
    {\huge \ttitle \par}
    \medskip
    {\Large{\textit{Abstract}} \par}
    %\medskip
%    {\normalsize \facname \par} % Faculty name
%    {\normalsize \deptname \par} % Department name
%    \bigskip
%    {\normalsize \degreename\par} % Degree name
%    \bigskip
%    {\normalsize\bf \@title \par} % Thesis title
%    \medskip
%    {\normalsize by \authornames \par} % Author name
%    \bigskip
  \end{center}
}
%----------------------------------------------------------------------------------------
%{
  %\vfil\vfil\vfil\null
  %\cleardoublepage
%}

%\addtocounter{secnumdepth}{1}
%\setcounter{tocdepth}{6}
%\newcounter{dummy}
%\newcommand\addtotoc[1]{
%\refstepcounter{dummy}
%\addcontentsline{toc}{chapter}{#1}}
%\usepackage{hyperref}
%\hypersetup{
    %colorlinks,
    %citecolor=black,
    %filecolor=black,
    %linkcolor=black,
    %urlcolor=black
%}

%\renewcommand\tableofcontents{
%\btypeout{Table of Contents}
%\addtotoc{Contents}
%\begin{spacing}{1.3}{
    %\setlength{\parskip}{1pt}
    %\if@twocolumn
      %\@restonecoltrue\onecolumn
    %\else
      %\@restonecolfalse
    %\fi
    %\chapter*{\contentsname
        %\@mkboth{
           %\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    %\@starttoc{toc}
    %\if@restonecol\twocolumn\fi
   %\cleardoublepage
%}\end{spacing}
%}
%\renewcommand\listoffigures{
%\btypeout{List of Figures}
%\addtotoc{List of Figures}
%\begin{spacing}{1.3}{
%    \setlength{\parskip}{1pt}
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \chapter*{\listfigurename
%      \@mkboth{\MakeUppercase\listfigurename}
%              {\MakeUppercase\listfigurename}}
%    \@starttoc{lof}
%    \if@restonecol\twocolumn\fi
%    \cleardoublepage
%}\end{spacing}
%}
%\renewcommand\listoftables{
%\btypeout{List of Tables}
%\addtotoc{List of Tables}
%\begin{spacing}{1.3}{
%    \setlength{\parskip}{1pt}
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \chapter*{\listtablename
%      \@mkboth{
%          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
%    \@starttoc{lot}
%    \if@restonecol\twocolumn\fi
%    \cleardoublepage
%}\end{spacing}
%}
%\newcommand\listsymbolname{Abbreviations}
%\usepackage{longtable}
%\newcommand\listofsymbols[2]{
%\btypeout{\listsymbolname}
%\addtotoc{\listsymbolname}
    %\chapter*{\listsymbolname
      %\@mkboth{
          %\MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
%\begin{longtable}[c]{#1}#2\end{longtable}\par
    %\cleardoublepage
%}
%\newcommand\listconstants{Physical Constants}
%\usepackage{longtable}
%\newcommand\listofconstants[2]{
%\btypeout{\listconstants}
%\addtotoc{\listconstants}
    %\chapter*{\listconstants
      %\@mkboth{
          %\MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
%\begin{longtable}[c]{#1}#2\end{longtable}\par
    %\cleardoublepage
%}
%\newcommand\listnomenclature{Symbols}
%\usepackage{longtable}
%\newcommand\listofnomenclature[2]{
%\btypeout{\listnomenclature}
%\addtotoc{\listnomenclature}
    %\chapter*{\listnomenclature
      %\@mkboth{
          %\MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
%\begin{longtable}[c]{#1}#2\end{longtable}\par
    %\cleardoublepage
%}
%\newcommand\acknowledgements[1]{
%\btypeout{Acknowledgements}
%\addtotoc{Acknowledgements}
%\thispagestyle{plain}
%%\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
%{\normalsize #1}
%\vfil\vfil\null
%
%}
%\newcommand\dedicatory[1]{
%\btypeout{Dedicatory}
%\thispagestyle{plain}
%\null\vfil
%\vskip 60\p@
%\begin{center}{\Large \sl #1}\end{center}
%\vfil\null
%\cleardoublepage
%}
%\renewcommand\backmatter{
  %\if@openright
    %\cleardoublepage
  %\else
    %\clearpage
  %\fi
  %\addtotoc{\bibname}
  %\btypeout{\bibname}
  %\@mainmatterfalse}
%\usepackage[backend=bibtex]{biblatex}% http://ctan.org/pkg/biblatex	
%\usepackage[backend=biber]{biblatex}% http://ctan.org/pkg/biblatex
%\bibliography{Bibliography} % The references (bibliography) information are stored in the file named "Bibliography.bib"
%\addbibresource{Bibliography}

%----------------------------------------------------------------------------------------
%	РЕЗИМЕ PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{rezime}
{
  \btypeout{Rezime Page}
  %\thispagestyle{empty}
	\thispagestyle{plain}
  \null\vfil
  \begin{center}
%    \setlength{\parskip}{0pt}
%    {\normalsize \UNIVNAME \par} % University name in capitals
%    \bigskip
		{\huge \nteze \par}
		\medskip
%    {\Large{\textit{Резиме}} \par}
    {\Large{\textit{Сажетак}} \par}
    %\medskip
%    {\normalsize \facname \par} % Faculty name
%    {\normalsize \deptname \par} % Department name
%    \bigskip
%    {\normalsize \degreename\par} % Degree name
%    \bigskip
%    {\normalsize\bf \@title \par} % Thesis title
%    \medskip
%    {\normalsize by \authornames \par} % Author name
%    \bigskip
  \end{center}
}
%----------------------------------------------------------------------------------------

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\usepackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\addtotoc{Садржај}
\begin{spacing}{1.3}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}

\newcommand\supervisorcommittee[1]{
\btypeout{Committee}
%\addtotoc{Acknowledgements}
\thispagestyle{plain}
%\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}

\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Предговор и захвалница}
\thispagestyle{plain}
%\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}

%\graphicspath{{Pictures/}} % Specifies the directory where pictures are stored

%\setmainlanguage{english}
%\usepackage[backend=biber,language=english,style=nature]{biblatex}
%\usepackage[backend=biber,language=english]{biblatex}
%\usepackage[backend=biber, language=english, style=nature, sorting=none]{biblatex}
%\usepackage[backend=biber, language=english, sorting=none]{biblatex}
\usepackage[backend=biber, language=english, style=numeric, sorting=none]{biblatex}
%\usepackage[backend=biber, language=english, style=nature, sorting=none]{biblatex}
%\usepackage[backend=biber, language=english, sorting=none]{biblatex}

%\usepackage[bibencoding=auto,backend=biber,autolang=other]{biblatex}
\addbibresource{Bibliography.bib}

\hypersetup{urlcolor=black, colorlinks=true} % Colors hyperlinks in blue - change to black if annoying

%\usepackage{svg}
\usepackage{subfigure}

\title{\ttitle} % Defines the thesis title - don't touch this

\usepackage{appendix}

\makeatletter
\renewcommand*\env@matrix[1][c]{\hskip -\arraycolsep
  \let\@ifnextchar\new@ifnextchar
  \array{*\c@MaxMatrixCols #1}}
\makeatother

\usepackage{braket}
\usepackage{mathrsfs}
\newcommand{\me}{\mathrm{e}}

\newcommand{\s}{\,\mathrm{s}}
\newcommand{\ns}{\,\mathrm{ns}}
\newcommand{\met}{\,\mathrm{m}}
\newcommand{\cm}{\,\mathrm{cm}}
\newcommand{\mm}{\,\mathrm{mm}}
\newcommand{\um}{\,\mathrm{\mu m}}
\newcommand{\km}{\,\mathrm{km}}
\newcommand{\lum}{\,\mathrm{cm}^2\,\mathrm{s}^{-1}}
\newcommand{\Hz}{\,\mathrm{Hz}}
\newcommand{\KHz}{\,\mathrm{KHz}}
\newcommand{\MHz}{\,\mathrm{MHz}}
\newcommand{\Tes}{\,\mathrm{T}}
\newcommand{\K}{\,\mathrm{K}}

\newcommand{\MeV}{\,\mathrm{MeV}}
\newcommand{\GeV}{\,\mathrm{GeV}}
\newcommand{\TeV}{\,\mathrm{TeV}}
\newcommand{\fb}{\,\mathrm{fb}}
\newcommand{\pb}{\,\mathrm{pb}}
\newcommand{\ab}{\,\mathrm{ab}}
\newcommand{\inb}{\,\mathrm{nb^{-1}}}
\newcommand{\ifb}{\,\mathrm{fb^{-1}}}
\newcommand{\ipb}{\,\mathrm{pb^{-1}}}
\newcommand{\iab}{\,\mathrm{ab^{-1}}}
%\newcommand{\tT}{t\bar{t}}
\newcommand{\ttbar}{t\bar{t}}
\newcommand{\ttH}{t\bar{t}H}
\newcommand{\ttW}{t\bar{t}W}
\newcommand{\ttZ}{t\bar{t}Z}
\newcommand{\ttV}{t\bar{t}V}
\newcommand{\ttG}{t\bar{t}\gamma}
\newcommand{\ttGs}{t\bar{t}\gamma^{*}}
\newcommand{\ttgamma}{t\bar{t}\gamma}
\newcommand{\ee}{e^{\pm}e^{\pm}}
\newcommand{\emu}{e^{\pm}\mu^{\pm}}
\newcommand{\mumu}{\mu^{\pm}\mu^{\pm}}
\newcommand{\codet}[1]{\begingroup\tiny\cyrillicfonttt{#1}\endgroup}
\newcommand{\codes}[1]{\begingroup\small\cyrillicfonttt{#1}\endgroup}







%\newcommand{\pt}{$p_{T}$}
%%\newcommand{\me}{\mathrm{e}}
%\newcommand{\mh}{\mathrm{m_{H}}}
%\newcommand{\mgg}{\mathrm{m_{\gamma\gamma}}}
%\newcommand{\BDTgg}{\mathrm{BDT_{\gamma\gamma}}}
%\newcommand{\Hbb}{\mathrm{H \rightarrow b \bar{b}}}
%\newcommand{\Hgg}{\mathrm{H \rightarrow \gamma\gamma}}
%\newcommand{\HWW}{\mathrm{H \rightarrow WW^{*}}}
%\newcommand{\HZZ}{\mathrm{H \rightarrow ZZ^{*}}}
%\newcommand{\Htt}{\mathrm{H \rightarrow \tau^{+}\tau^{-}}}
%\newcommand{\ttHbb}{\mathrm{\ttH \rightarrow b \bar{b}}}
%\newcommand{\ttHgg}{\mathrm{\ttH \rightarrow \gamma\gamma}}
%\newcommand{\ttHml}{\mathrm{\ttH \rightarrow \mathrm{multilepton}}}
%\newcommand{\bbar}{\mathrm{b\bar{b}}}
%\newcommand{\W}{\mathrm{W}}
%\newcommand{\Z}{\mathrm{Z}}
%\newcommand{\WW}{\mathrm{WW^{*}}}
%\newcommand{\ZZ}{\mathrm{ZZ^{*}}}
%\newcommand{\tautau}{\mathrm{\tau^{+}\tau^{-}}}
%\newcommand{\gammagamma}{\mathrm{\gamma\gamma}}

%\newcommand{\pt}{$p_{T}$}
%%\newcommand{\me}{\mathrm{e}}
%\newcommand{\mh}{\mathrm{m}_\mathrm{{H}}}
%\newcommand{\mgg}{\mathrm{m}_{\gamma\gamma}}
%\newcommand{\BDTgg}{\mathrm{BDT}_{\gamma\gamma}}
%\newcommand{\Hbb}{\mathrm{H} \rightarrow \mathrm{b} \bar{\mathrm{b}}}
%\newcommand{\Hgg}{\mathrm{H} \rightarrow \gamma\gamma}
%\newcommand{\HWW}{\mathrm{H} \rightarrow \mathrm{W}\mathrm{W}^{*}}
%\newcommand{\HZZ}{\mathrm{H} \rightarrow \mathrm{Z}\mathrm{Z}^{*}}
%\newcommand{\Htt}{\mathrm{H} \rightarrow \tau^{+}\tau^{-}}
%\newcommand{\ttHbb}{\mathrm{\ttH \rightarrow b \bar{b}}}
%\newcommand{\ttHgg}{\ttH \rightarrow \gamma\gamma}
%\newcommand{\ttHml}{\ttH \rightarrow \mathrm{multilepton}}
%\newcommand{\bbar}{\mathrm{b}\bar{\mathrm{b}}}
%\newcommand{\W}{\mathrm{W}}
%\newcommand{\Z}{\mathrm{Z}}
%\newcommand{\WW}{\mathrm{W}\mathrm{W}^{*}}
%\newcommand{\ZZ}{\mathrm{Z}\mathrm{Z}^{*}}
%\newcommand{\tautau}{\tau^{+}\tau^{-}}
%\newcommand{\gammagamma}{\gamma\gamma}

\newcommand{\pt}{$p_{T}$}
%\newcommand{\me}{{e}}
\newcommand{\mh}{{m}_{{H}}}
\newcommand{\mgg}{{m}_{\gamma\gamma}}
\newcommand{\BDTgg}{{BDT}_{\gamma\gamma}}
\newcommand{\Hbb}{{H} \rightarrow {b} \bar{{b}}}
\newcommand{\Hgg}{{H} \rightarrow \gamma\gamma}
\newcommand{\HWW}{{H} \rightarrow {W}{W}^{*}}
\newcommand{\HZZ}{{H} \rightarrow {Z}{Z}^{*}}
\newcommand{\Htt}{{H} \rightarrow \tau^{+}\tau^{-}}
\newcommand{\ttHbb}{{\ttH \rightarrow b \bar{b}}}
\newcommand{\ttHgg}{\ttH \rightarrow \gamma\gamma}
\newcommand{\ttHml}{\ttH \rightarrow {multilepton}}
\newcommand{\bbar}{{b}\bar{{b}}}
\newcommand{\W}{{W}}
\newcommand{\Z}{{Z}}
\newcommand{\WW}{{W}{W}^{*}}
\newcommand{\ZZ}{{Z}{Z}^{*}}
\newcommand{\tautau}{\tau^{+}\tau^{-}}
\newcommand{\gammagamma}{\gamma\gamma}

%\newcommand{\s}{\,\mathrm{s}}
%\newcommand{\ns}{\,\mathrm{ns}}
%\newcommand{\met}{\,\mathrm{m}}
%\newcommand{\cm}{\,\mathrm{cm}}
%\newcommand{\mm}{\,\mathrm{mm}}
%\newcommand{\um}{\,\mathrm{\mu m}}
%\newcommand{\km}{\,\mathrm{km}}
%\newcommand{\lum}{\,\mathrm{cm}^2\,\mathrm{s}^{-1}}
%\newcommand{\Hz}{\,\mathrm{Hz}}
%\newcommand{\KHz}{\,\mathrm{KHz}}
%\newcommand{\MHz}{\,\mathrm{MHz}}
%\newcommand{\Tes}{\,\mathrm{T}}
%\newcommand{\K}{\,\mathrm{K}}

%\newcommand{\MeV}{\,\mathrm{MeV}}
%\newcommand{\GeV}{\,\mathrm{GeV}}
%\newcommand{\TeV}{\,\mathrm{TeV}}
%\newcommand{\fb}{\,\mathrm{fb}}
%\newcommand{\pb}{\,\mathrm{pb}}
%\newcommand{\ab}{\,\mathrm{ab}}
%\newcommand{\inb}{\,\mathrm{nb^{-1}}}
%\newcommand{\ifb}{\,\mathrm{fb^{-1}}}
%\newcommand{\ipb}{\,\mathrm{pb^{-1}}}
%\newcommand{\iab}{\,\mathrm{ab^{-1}}}
\newcommand{\tT}{t\bar{t}}
%\newcommand{\ttbar}{\mathrm{t\bar{t}}}
%\newcommand{\ttH}{\mathrm{t\bar{t}H}}
%\newcommand{\ttW}{\mathrm{t\bar{t}W}}
%\newcommand{\ttZ}{\mathrm{t\bar{t}Z}}
%\newcommand{\ttV}{\mathrm{t\bar{t}V}}
%\newcommand{\ttG}{\mathrm{t\bar{t}\gamma}}
%\newcommand{\ttGs}{\mathrm{t\bar{t}\gamma^{*}}}
%\newcommand{\ttgamma}{\mathrm{t\bar{t}\gamma}}
%\newcommand{\ee}{e^{\pm}e^{\pm}}
%\newcommand{\emu}{e^{\pm}\mu^{\pm}}
%\newcommand{\mumu}{\mu^{\pm}\mu^{\pm}}






\renewcommand*{\thefootnote}{[\arabic{footnote}]}

\usepackage{csquotes}
\setquotestyle{english}

%\usepackage{ifpdf}
%\ifpdf
%  \usepackage{epstopdf}
%\fi

%	\usepackage{graphicx}

\usepackage{float}

\usepackage{multirow}

\begin{comment}
% enumaration of lines
\usepackage{lineno}
\linenumbers
\renewcommand\linenumberfont{\normalfont\bfseries\small}
\end{comment}

%\newbibmacro*{labelyear+extrayear}{%
  %\iffieldundef{labelyear}
    %{\iffieldundef{origyear}
      %{}
      %{\setunit{\addcomma\space}\printfield[noformat]{origyear}}}%
    %{\setunit{\addcomma\space}\printdateextralabel}}
		
%\usepackage{xpatch}



\endinput
