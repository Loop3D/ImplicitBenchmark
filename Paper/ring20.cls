%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This is file ring20.cls'  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Made by: Francois Bonneau & Guillaume Caumon
%% Email: francois.bonneau@univ-lorraine.fr
% This style should be suitable for both Linux and Windows, and pdflatex or
% latex (DVI) compilation.
%
% You should not edit this file without good reason!
%%
%% This class has been tested with:
%%     MiKTeX version 2.9
%%
%% It is based on the standard LaTeX2e "article" class and some
%% standard packages:
%%    footmisc - for enhance footnotes to be pasted at the bottom of the page
%%    vmargin  - for marge settings
%%    fancyhdr - for defining headnote and footnote
%%    graphicx - for including pictures and figures
%%    natbib   - for referencing
%%
%% All packages should be availble in any normal distribution of LaTeX,
%% or can be downloaded from the CTAN homepage:
%%    www.ctan.org
%%
%--------------------------------------------------------
% Year specific variables
\newcommand{\meetingedition}{2020}
\newcommand{\meetingdate}{September 2020}
%
%
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{ring20}[2020/02/12 RING Proceedings Class]
%%
%% Pass all options directly to 'article'
%%
\newif\if@preprint \@preprintfalse
\DeclareOption{preprint}{\@preprinttrue}
\DeclareOption{final}{\@preprintfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
%%
%% prefered fontsize, papersize, and type
%%
\LoadClass[oneside,11pt,a4paper]{article}
%%
%%
\newcommand{\VAR@date} {}
\renewcommand{\date}[1]{
   \renewcommand{\VAR@date}{#1}
}
\if@preprint
	\RequirePackage[left]{lineno}
	\linespread{1.5}
	\linenumbers
	\date{\today}
\else
	\linespread{0.92}
	\date{\meetingdate}
\fi
%---------------------------------------------------------
% Various settings
%\setmarginsrb{marge gauche}{marge haute}{marge droite}{marge basse}
%             {hauteur d'entete} {distance entete-texte}
%             {hauteur pied de page} {distance bas de page - bas
%             pied de page}
\RequirePackage{vmargin}
\setmarginsrb{2cm}{3.5cm}{2cm}{15mm}{0cm}{0mm}{2.5cm}{1cm}
\if@preprint\setmarginsrb{2cm}{1cm}{2cm}{15mm}{1cm}{0mm}{1cm}{1.5cm}\fi

\renewcommand{\floatpagefraction}{.9}

%---------------------------------------------------
% For title and title over-riding report


% variables used to write the title and the head/foot notes
\newcommand{\VAR@title} {}
\newcommand{\VAR@shorttitle} {}
\newcommand{\VAR@authorfoot} {}
\newcommand{\@Titre}[1]{}
\newcommand{\@PetitTitre}[1]{}
\newcommand{\@Date}[1]{}

\newcommand{\shorttitle}[1]{
   \renewcommand{\VAR@shorttitle}{#1}
}
\renewcommand{\title}[1]{
   \renewcommand{\VAR@title}{#1}
}
\newcommand{\address}[1]{
   \renewcommand{\VAR@address}{#1}
}
\newcommand{\shortauthor}[1]{
   \renewcommand{\VAR@authorfoot}{#1}
}

% Packages definition
% (not in the .tex to lighten it)
\RequirePackage{amsmath}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\RequirePackage[affil-it]{authblk}
\RequirePackage[centerlast,small]{caption}
\RequirePackage{graphicx}
\RequirePackage[bottom]{footmisc}

%%
%% set header and footer
%%
\RequirePackage{fancyhdr}
% Have to define the new maketitle
\def\maketitle{\par
\begingroup
\def\thefootnote{\fnsymbol{footnote}} \def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$\hss}}
\if@twocolumn
\twocolumn[\@maketitle]
\else \newpage
\global\@topnum\z@ \@maketitle \fi\thispagestyle{empty}\@thanks \endgroup
\setcounter{footnote}{0}
\let\maketitle\relax
\let\@maketitle\relax
}

\def\@maketitle{\newpage
\null
\vspace*{0.2cm}
\begin{center}
	{\Large \VAR@title \par} \vspace{4.5mm}
	{\normalsize \@author \par} \vspace{2.5mm}
	{\normalsize \VAR@date \par} \vspace*{6.5mm}
\end{center}
}
% Specify the way the title, author name and number of page will
% be located
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}
%\lhead{} \chead{ \meetingedition{} RING MEETING } \rhead{} 
\lfoot{
	\VAR@shorttitle\\
	\VAR@authorfoot\\
	\if@preprint\centering \meetingedition{} RING MEETING - PREPRINT - \VAR@date \hfill \thepage{}\fi
}
\cfoot{}
\rfoot{}
%%
%% caption font
%%
% Caption style
\setlength{\captionmargin}{20pt}
\renewcommand{\captionfont}{\sl}
\renewcommand{\captionlabelfont}{\normalfont}
%%
%% bibliography
%%
%\RequirePackage{natbib} % special citing commands
%\setlength{\bibsep}{0pt} % no lines between bibitems
%\setlength{\bibhang}{1em} % indentation of second line in bibitem
%\bibliographystyle{ring} % stylefile

%%% Section modified from agujournal2019 LaTeX Template. 

\bibliographystyle{apaRING}
\RequirePackage[natbibapa]{apacite}
%\RequirePackage{natbib}
%\let\cite\shortcite %xx So get et al. with three authors the first time.
%\let\citep\shortcite %xx A natbib command.
%\let\citet\shortcite %xx Ditto.
%let\citeA\shortciteA %xx Ditto.


%% end Bibliography, and References
% EOF
