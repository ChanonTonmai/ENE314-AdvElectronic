%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%     Filename = kmutt-thesis-th.cls v1.0
%     Author   = Pinit Kumom (pinit.kumhom@mail.kmutt.ac.th)
%                    Modified from cpe-grad class by Peerapon Siripongwutikorn (peerapon@cpe.kmutt.ac.th)
% 
% This is a LaTeX class file for project report and thesis at Electronic and Telecom. Engineering Dept.,
% KMUTT.
% Date: Feb. 7, 2015
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage[thai,english]{babel}
%\usepackage{thswitch} 

%\usepackage[utf8]{inputenc}
\usepackage[left=4cm, top=3cm, right=2cm, bottom=2cm]{geometry} 
%\usepackage{showframe}

\usepackage{xstring}
\DeclareRobustCommand\ToThai[1]{\expandafter\arabictothai\expandafter{\the\csname c@#1\endcsname}}
\newcommand{\arabictothai}[1]%
{%
  \StrSubstitute{#1}{0}{ก}[\num]
  \StrSubstitute{\num}{1}{ข}[\num]
  \StrSubstitute{\num}{2}{ค}[\num]
  \StrSubstitute{\num}{3}{ง}[\num]
  \StrSubstitute{\num}{4}{จ}[\num]
  \StrSubstitute{\num}{5}{ฉ}[\num]
  \StrSubstitute{\num}{6}{ช}[\num]
  \StrSubstitute{\num}{7}{ซ}[\num]
  \StrSubstitute{\num}{8}{ฌ}[\num]
  \StrSubstitute{\num}{9}{ญ}[\num]
  \StrSubstitute{\num}{10}{ฎ}[\num]
  \StrSubstitute{\num}{11}{ฏ}[\num]
  \StrSubstitute{\num}{12}{ฐ}
}

\usepackage{times}   
\usepackage{graphicx} %%% Use the option pdftex instead of
                             %%% dvips if you use pdflatex 
\graphicspath{{./figs/}}
%----------------------------------
\usepackage{array}
%\usepackage[ps2pdf]{thumbpdf}
% 1. Generage pdf file
% 2. thumbpdf --modes=dvips pdf-file for ps2pdf
%    thumbpdf pdf-file for pdfLaTeX
% 3. regenerate pdf file with -t option
\usepackage{amsfonts,amsmath} %% For math fonts and operations                         

\def\disstitleone{Title's Topic}      % 1st line of TITLE of dissertation
\def\disstitletwo{}                           % 2nd line of TITLE if needed
\def\disstitlethree{}                         % 3rd line of TITLE if needed
\def\disstitlefour{}                          % 4th line of TITLE if needed
\def\dissauthor{Your Name}                    % Author of dissertation 
\def\studentID{55070702218}               % Student ID
\def\dissdiplomaone{B.E. (Electrical Engineering)} % first degree
\def\dissdiplomatwo{M.E. (Electrical Engineering)}   % second degree
\def\dissdiplomathree{}                       % still in school?
\def\dissdiplomafour{}                        % collecting them?
\def\dissdegree{Master of Engineering}         % Name of the degree
\def\dissdegreefield{Electrical and Information Engineering} % Field of the degree
\def\dissdegreeabrev{Ph.D.}                   % Abbreviation of the degree
\def\dissyear{}                           % Year of submission
\def\dissdefensedate{}             % Date of defense
\def\dissadvisor{}    % Advisor and 2nd committee member
\def\disscoadvisor{}    % Coadvisor and 2nd committee member
\def\disscommitteechair{Prof. Francis Crick}  % Name of the Chairman
\def\disscommitteetwo{Prof. Julius Axelrod}   % 3rd committee member
\def\disscommitteethree{}   % 4th committee member
\def\disscommitteefour{}                      % 5th committee member
\def\department{}
\def\faculty{}

\def\thaidisstitleone{ชื่อหัวข้อวิทยานิพนธ์ภาษาไทย}      % 1st line of TITLE of dissertation
\def\thaidisstitletwo{}                           % 2nd line of TITLE if needed
\def\thaidisstitlethree{}                         % 3rd line of TITLE if needed
\def\thaidisstitlefour{}                          % 4th line of TITLE if needed
\def\thaidissauthor{ชื่อคุณ}                    % Author of dissertation
\def\thaidissdiplomaone{} % first degree
\def\thaidissdiplomatwo{}   % second degree
\def\thaidissdiplomathree{}                       % still in school?
\def\thaidissdiplomafour{}                        % collecting them?
\def\thaidissdegree{วิศวกรรมศาสตร์ดุษฎีบัณฑิต}         % Name of the degree
\def\thaidissdegreeabrev{วศ. ด.}                   % Abbreviation of the degree
\def\thaidissyear{}                           % Year of submission
\def\thaidissdefensedate{}             % Date of defense
\def\thaidissadvisor{}    % Advisor and 2nd committee member
\def\thaidisscoadvisor{}    % Coadvisor and 2nd committee member
\def\thaidisscommitteechair{}  % Name of the Chairman
\def\thaidisscommitteetwo{}   % 3rd committee member
\def\thaidisscommitteethree{}   % 4th committee member
\def\thaidisscommitteefour{}                      % 5th committee member

\def\thaiworktype{}

\def\thaiConfirmationLone{}
\def\thaiConfirmationLtwo{}
\def\thaiConfirmationLthree{}
\def\thaiuniversityname{}
\def\thaidepartment{}
\def\thaifaculty{}
% 
% Include the followng line (uncommented) in your dissertation file
% if your work has more than one appendix. This is what will be written on the 
% cover page preceding the appendices.  By default, it is set to {Appendix}.
% 
% \def\appendixnames{Appendices}              % if more than one appendix
% 
% Your dissertation should be structured the following way:
% \maketitlepage, \makecopyrightpage, \makesignaturepage,
% \abstract{}, \preface{}, \tableofcontents, \listoftables, \listoffigures,
% \chapter{},....., \appendix{},.....,
% \thebibliography (or \bibliography{} with BiBTeX), \theindex
% 
% ************************************************************************

\ProvidesClass{kmutt-thesis-th}
              [2015/02/07 v1.0
   LaTeX document class]
\def\baseclass{report}
\input report.cls  % most of the stuff is defined here
\typeout{Document Style `KMUTT Thai Thesis/report'.}
\newcommand{\dotrule}[1]{% 
      \parbox[t]{#1}{\dotfill}} 
      
%\makeatletter
%\def\thalph#1{\expandafter\@thalph\csname c@#1\endcsname}
%\def\@thalph#1{%
%  \ifcase#1\or ก\or ข\or ค\or ง\or จ\or ฉ\or ช\or ซ\or ฌ\or ญ\or ฎ\or
%   ฏ\or ฐ\or ฑ\or ฒ\or ณ\or ด\or ต\or ถ\or ท\or ธ\or น\or บ\or 
%    ป\or ผ\or ฝ\or พ\or ฟ\or ภ\or ม\or ย\or ร\or ล\or ว\or ศ\or ษ\or 
%    ส\or ห\or ฬ\or อ\or ฮ\else\@ctrerr\fi}
%\makeatother

\newcommand{\thepageth}{\ToThai{page}}
% **************************************************************************
% Redefinition of some values
% **************************************************************************
\def\ssp{\def\baselinestretch{1.0}\large\normalsize}
\def\dsp{\def\baselinestretch{1.37}\large\normalsize}
%\def\dsp{\def\baselinestretch{1.1}\large\normalsize}
\newif\ifdraftmode \draftmodefalse
\ifdim \overfullrule > 0pt \draftmodetrue \ssp \else \dsp \fi  % draft mode on?
\def\truebaselineskip{\baselineskip}
\def\baselineskipxii{24pt}
\def\baselineskipxi{18.6pt}  % for title and signature page
\def\emptyline#1{\vspace*{#1\baselineskip}}
\newif\iffirstappendix \firstappendixtrue
\newif\iffirstchapter \firstchaptertrue
\def\tocprefix{}
\newif\ifprelude \preludetrue
\newif\ifromanmode \romanmodetrue \pagenumbering{roman}
\def\setarabic{\ifromanmode \romanmodefalse \pagenumbering{arabic} \fi}
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{1} % Put only the chapter and section on the table of conent (2017/07/12)
%--------------Page setup--------------------------- (2017/08/11)
%--------vertical setup------------
%  \topmarign + \headheight
\topmargin -1.26cm
\footskip 12truept \footnotesep 25 truept
\headheight 12 truept \headsep 25 truept
\textheight 25.47cm %\advance\textheight by \topskip 
%---------horizontal setup-------------
\oddsidemargin 27pt
\textwidth 441pt
%\textheight 9.0truein \advance\textheight by \topskip \textwidth 6.0truein 
%------------------------------------
\onecolumn \parindent 0em
\if@twoside\else\raggedbottom\fi
\widowpenalty=10000 \clubpenalty=10000 \looseness=1

% ***********************************************************************
% Modifications for single spacing and indentation, from Ethan V. Munson's 
% style file for dissertations at the Univ of California
% ***********************************************************************

\def\smallssp{\def\baselinestretch{1.0}\large\small}
\def\scriptsizessp{\def\baselinestretch{1.0}\large\scriptsize}
%\def\tabular{\par\ssp\let\@halignto\@empty\@tabular}
%\expandafter \def\csname tabular*\endcsname #1{\par\ssp\def\@halignto{to#1}\@tabular}
\def\smalltabular{\par\smallssp\let\@halignto\@empty\@tabular}
\def\endsmalltabular{\endtabular}
\expandafter \def\csname smalltabular*\endcsname #1{\par\smallssp\def\@halignto{to#1}\@tabular}
\expandafter \let \csname endsmalltabular*\endcsname = \endtabular
\def\scriptsizetabular{\par\scriptsizessp\let\@halignto\@empty\@tabular}
\def\endscriptsizetabular{\endtabular}
\expandafter \def\csname scriptsizetabular*\endcsname #1{\par\scriptsizessp\def\@halignto{to#1}\@tabular}
\expandafter \let \csname endscriptsizetabular*\endcsname = \endtabular
\long\def\@footnotetext#1{\insert\footins{\ssp\reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty\splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces #1\strut}}}
\def\@startsection#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
   \par \@tempskipa #4\relax \@afterindenttrue
   \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \relax\fi
   \if@nobreak \everypar{}\else
     \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi \@ifstar
     {\@ssect{#3}{#4}{#5}{#6}}{\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}

% ***********************************************************************
% Redefinition of main dissertation divisions, to comply with KMUTT 
% regulations.
% ***********************************************************************

%%%%%%%%%%%%%%%%%%%%%%%%% pagestyles %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\ps@plain{\let\@mkboth\markboth\def\@oddfoot{}\def\@evenfoot{}
   \def\@oddhead{\hbox{}\hfil\rm\thepage} \def\@evenhead{\rm\thepage\hfil\hbox{}}}
\def\ps@plainbottom{\let\@mkboth\markboth\def\@oddhead{}\def\@evenhead{}
   \def\@oddfoot{\hfil\rm\thepage\hfil} \def\@evenfoot{\hfil\rm\thepage\hfil}}
\ps@plainbottom

\def\ps@plainthai{\let\@mkboth\markboth\def\@oddfoot{}\def\@evenfoot{}
   \def\@oddhead{\hbox{}\hfil\rm\thepageth} \def\@evenhead{\rm\thepageth\hfil\hbox{}}}
\ps@plainthai
%%%%%%%%%%%%%%%%%%%%%%%%% Chapter font %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%% Chapter heading in the text for \chapter{}
%\def\@makechapterhead#1{%\vspace*{.8truein}%
%  {\centering{\large\bf บทที่} \thechapter}\hskip 5\p@  }%\vskip 20\p@
%  {\centering\large\bf #1\par\nobreak\emptyline 2}}
\def\@makechapterhead#1{%\vspace*{.8truein}%
  {\centering{\normalfont\LARGE\bfseries บทที่ \thechapter}\hskip 5\p@  }%\vskip 20\p@ \@chapapp{}
  {\centering\MakeUppercase{\normalfont\LARGE\bfseries #1}\par\nobreak\emptyline 2}}
%  {\centering\MakeUppercase{\large\bf #1}\par\nobreak\vskip 10\p@ }}
%\def\@makeschapterhead#1{\vspace*{.8truein}%
%  {\centering{\large\bf #1}\par\nobreak\vskip 40\p@ }}


\def\chapter{\clearpage
%   \ifprelude \pagestyle{plainbottom} \else 
%   \pagestyle{plain}\thispagestyle{plainbottom} \fi
   \global\@topnum\z@ \@afterindenttrue
   \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\preludefalse\setarabic
%   \pagestyle{plain}\thispagestyle{plainbottom} % added in v2.4
   \pagestyle{plain}\thispagestyle{empty} % No page number in chapter.
   \refstepcounter{chapter}%
   \typeout{\@chapapp\space\thechapter.}% 
%% Put the word บทที่ in ToC before the first chapter
   \iffirstchapter
       \addcontentsline{toc}{chapterxx}{\mdseries\bf บทที่}
       \firstchapterfalse
   \fi
%% Add the chapter heading in ToC
   \addcontentsline{toc}{chapter}{\normalsize\bf\tocprefix {\protect \numberline{\thechapter.}\hskip -0.5em #1}}
%   \addcontentsline{toc}{chapter}{\normalsize\bf\tocprefix {\protect \numberline{\thechapter.}\hskip -0.5em #1}}
   \chaptermark{#1}%
   %\addtocontents{lof} {\protect\addvspace{0\p@}}
   %\addtocontents{lot} {\protect\addvspace{0\p@}}
   \addtocontents{lof} {\protect\addvspace{0em}}
   \addtocontents{lot} {\protect\addvspace{0em}}
   \pagestyle{plain}\thispagestyle{empty}
   % Must be added after addcontentsline 
   % Otherwise, the page number may not show up..
   \@makechapterhead{#2} \@afterheading}
%% Remove top space from \chapter*{}
%% Chapter heading in the text for \chapter*{}
\def\@makeschapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \centering%\raggedright
    \normalfont
    \interlinepenalty\@M
    \large \bfseries  #1\par\nobreak
    \vskip 20\p@
  }}
\def\@schapter#1{\@makeschapterhead{#1} \@afterheading}

%%%%%%%%%%%%%%% Section heading fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus 1ex \@minus -0.1ex}%
				   {0.1ex\@plus .1ex} 
                                   %{2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%% Table/figure caption font %%%%%%%%%%%%%%%%%%%%%%%%
\setlength\belowcaptionskip{10\p@}
\long\def\@maketablecaption#1#2{
    \global \@minipagefalse
    \hbox to \hsize{\parbox[t]{\hsize}{{\bf #1} \parbox[t]{0.873\hsize}{#2} \vskip 0.5em}}}
\let\old@floatboxreset\@floatboxreset
\def\table{%
\let\@makecaption\@maketablecaption

%\def\@floatboxreset{%
% \old@floatboxreset
% \@tablesize
%}%
  \let\footnoterule\relax
  \let\contcaption\conttablecaption \@float{table}}
\def\endtable{\end@float}


\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\bf #1} #2}%
  \ifdim \wd\@tempboxa >\hsize
    \parbox[t]{0.126\hsize}{\bf #1} \parbox[t]{0.873\hsize}{#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%%%%%%%%%%%%%%%% Table/figure caption font %%%%%%%%%%%%%%%%%%%%%%%%
%\setlength\belowcaptionskip{10\p@}
%\long\def\@maketablecaption#1#2{
%    \global \@minipagefalse
%    \hbox to \hsize{\parbox[t]{\hsize}{{\bf #1} #2 \vskip 0.5em}}}
%\let\old@floatboxreset\@floatboxreset
%\def\table{%
%\let\@makecaption\@maketablecaption
%%\def\@floatboxreset{%
%% \old@floatboxreset
%% \@tablesize
%%}%
%  \let\footnoterule\relax
%  \let\contcaption\conttablecaption 
%  \@float{table}}
%\def\endtable{\end@float}
%
%
%\long\def\@makecaption#1#2{%
%  \vskip\abovecaptionskip
%  \sbox\@tempboxa{{\bf #1} #2}%
%  \ifdim \wd\@tempboxa >\hsize
%    {\bf #1} #2\par
%  \else
%    \global \@minipagefalse
%    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
%  \fi
%  \vskip\belowcaptionskip
%  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Define how the content lines show up in ToC when using
%%% addcontentsline{}{}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Normal chapter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    %\vskip 0.5em \@plus\p@    %% Space between entry in toc
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \bfseries #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

%% Special lines such as abstract, acknowledgment
%% have no extra spacing between lines.
\newcommand*\l@chapterx[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.2em \@plus\p@    %% No spacing between lines
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \bfseries #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup 
  \fi}

%%% Special toc entry with no number
\newcommand*\l@chapterxx[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1em \@plus\p@ % Space between entry
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \bfseries #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss}\par
      \penalty\@highpenalty
    \endgroup \vskip -0.8em
  \fi}

%%% Section entries %%%%%%%%%%%%%%
\def\l@section#1#2{\addpenalty{\@secpenalty}  % good place for page break
   %\addvspace{1.0em plus 1pt}  % space above toc entry
   \addvspace{0.2em}  % space above toc entry
   \@tempdima 2em            % width of box holding section number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth 
     \parfillskip -\@pnumwidth   
     %\sc                  % Small caps
     \leavevmode          % TeX command to enter horizontal mode.       
      \advance\leftskip\@tempdima  %% added 5 Feb 88 to conform to 
      \hskip -\leftskip            %% 25 Jan 88 change to \numberline
      \hskip 2em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
     %\hskip 2em #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
   \endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\l@subsection\l@section
\let\l@subsubsection\l@section

%%% Figure/table entries in list of figures and tables shows up
\def\l@figure#1#2{\addpenalty{\@secpenalty}  % good place for page break
   %\addvspace{1.0em plus 1pt}  % space above toc entry
  \addvspace{0.2em}  % space above toc entry
   \@tempdima 2em            % width of box holding section number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth 
     \parfillskip -\@pnumwidth   
     %\sc                  % Small caps
     \leavevmode          % TeX command to enter horizontal mode.       
      \advance\leftskip\@tempdima  %% added 5 Feb 88 to conform to 
      \hskip -\leftskip            %% 25 Jan 88 change to \numberline
      \hskip 0em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
     %\hskip 2em #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
   \endgroup}
\let\l@table\l@figure

%%% Appendix content lines
\def\l@apdx#1#2{\addpenalty{\@secpenalty}  % good place for page break
   \addvspace{0.2em}  % space above toc entry
   \@tempdima 2em            % width of box holding section number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth 
     \parfillskip -\@pnumwidth   
     %\sc                 % Small caps
     \leavevmode          % TeX command to enter horizontal mode.       
      \advance\leftskip\@tempdima  %% added 5 Feb 88 to conform to 
      \hskip -\leftskip            %% 25 Jan 88 change to \numberline
      \hskip 2em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
   \endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% English Title page %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\schoolname{}
\def\worktype{}  % Type of work..
\def\titleempty{}
\def\maketitlepage{\thispagestyle{empty}\c@page\@ne\baselineskip \baselineskipxii
   \emptyline 1 {\centering 
   \makebox{\MakeUppercase{\disstitleone}} \par
   \ifx \titleempty\disstitletwo \else  
   \makebox{\MakeUppercase{\disstitletwo}} \par
   \fi
   \emptyline 7 \MakeUppercase{\dissauthor} \par \emptyline 7
   %\makebox{\dissdiplomaone} \par \makebox{\dissdiplomatwo} \par
   %\makebox{\dissdiplomathree} \par \makebox{\dissdiplomafour} \par
   A \MakeUppercase{\worktype}\ SUBMITTED IN PARTIAL FULFILLMENT \par
   OF THE REQUIREMENTS FOR \par 
   THE DEGREE OF \MakeUppercase{\dissdegree}\ (COMPUTER ENGINEERING) \par
   \makebox{\MakeUppercase{\schoolname}} \par
%   \makebox{\schoolname} in partial fulfillment \par
%   of the requirements for the degree of \par \dissdegree \par
   KING MONGKUT'S UNIVERSITY OF TECHNOLOGY THONBURI \par 
   \dissyear \par}
   \newpage\baselineskip \truebaselineskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Copyright page %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makecopyrightpage{\newpage
   {\centering{\vbox{}\vfill Copyright by \dissauthor\par\dissyear\par \vfill\vbox{}}}\newpage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% English Signature page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\thesis{Thesis}
\def\makesignaturepage{
   \newpage\thispagestyle{empty}\baselineskip \baselineskipxi {\centering
   \makebox {\disstitleone} \par 
   \ifx \titleempty\disstitletwo \else  
   \makebox{\disstitletwo} \par
   \fi
   %\makebox {\disstitletwo} \par
   %\makebox {\disstitlethree} \par \makebox {\disstitlefour} \par
   \vfill \dissauthor\ \ \dissdiplomaone \ (Computer Engineering) \par 
   \vfill A \worktype\ Submitted in Partial Fulfillment \par
   of the Requirements for \par
   the Degree of \dissdegree \ (Computer Engineering) \par
   \makebox{\schoolname} \par
   King Mongkut's University of Technology Thonburi \par 
   \dissyear \par}
 \emptyline 1
\begin{flushleft}
\worktype\ Committee \par\par
\begin{tabular*}{\textwidth}{@{}c@{\extracolsep{1.2cm}}l@{}}
   & \\
%%%%% Chairman %%%%%%%%%%%%%%%%%%%%%%%%%
  \dotrule{3.6in} & Chairperson\\
  (\disscommitteechair) & \\ 
   & \\
%%%%% Thesis or project advisor %%%%%%%%
\ifx \thesis\worktype
  \dotrule{3.6in} & Member and  \\
  (\dissadvisor) & \worktype\ Advisor\\
   & \\ 
\else
  \dotrule{3.6in} & Member and Special \\
  (\dissadvisor) & Project Study Advisor\\
   & \\ 
\fi
%%%%%%% 3rd committee %%%%%%%%%%%%%%%%%%
  \dotrule{3.6in} & Member \\
  (\disscommitteetwo) & \\
   & \\
%%%%%%% 4th committee %%%%%%%%%%%%%%%%%%
\ifx \titleempty\disscommitteethree \else
  \dotrule{3.6in} & Member \\
  (\disscommitteethree) & \\
  & \\
\fi
%%%%%%%% 5th committee %%%%%%%%%%%%%%%%
\ifx \titleempty\disscommitteefour \else
  \dotrule{3.6in} & Member \\
  (\disscommitteefour) & \\
   & \\
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{tabular*}
\end{flushleft}
\begin{center}	
\vspace*{\fill}Copyright reserved
\end{center}	
\newpage\baselineskip \truebaselineskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Thai Title page %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\schoolname{}
\def\thaiworktype{}  % Type of work..
\def\titleempty{}
\def\makethaititlepage{\thispagestyle{empty}\c@page\@ne\baselineskip \baselineskipxii
   \emptyline 1 {\centering\large
   \makebox{\thaidisstitleone} \par
   \ifx \titleempty\thaidisstitletwo \else  
   \makebox{\MakeUppercase{\thaidisstitletwo}} \par
   \fi
   \emptyline 7 
   \emptyline 5 
   \thaidissauthor \par
%   รหัสนักศึกษา\ \studentID \par
   \emptyline 7
   \emptyline 5 
   \thaiworktype นี้เป็นส่วนหนึ่งของการศึกษาตามหลักสูตร \par
   ปริญญา\thaidissdegree\ สาขาวิชา\thaidissdegreefield \par
   \makebox{คณะ\thaischoolname} \par
%   \makebox{\schoolname} in partial fulfillment \par
%   of the requirements for the degree of \par \dissdegree \par
   มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี \par 
   ปีการศึกษา\ \thaidissyear \par}
   \newpage\baselineskip \truebaselineskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Thai Copyright page %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makethaicopyrightpage{\newpage
   {\centering{\vbox{}\vfill ลิขสิทธิ์ของ \dissauthor\par\dissyear\par \vfill\vbox{}}}\newpage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Thai Signature page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\def\thesis{Research Study}
\def\makethaisignaturepage{
   \newpage\thispagestyle{empty}\baselineskip \baselineskipxi {\centering
   \makebox {\thaidisstitleone} \par 
   \ifx \titleempty\thaidisstitletwo \else  
   \makebox{\thaidisstitletwo} \par
   \fi
   %\makebox {\disstitletwo} \par
   %\makebox {\disstitlethree} \par \makebox {\disstitlefour} \par
   \vfill \thaidissauthor\ \ \thaidissdiplomaone \par 
   \vfill 
   \thaiworktype นี้เป็นส่วนหนึ่งของการศึกษาตามหลักสูตร \par
   ปริญญา\thaidissdegree\ สาขาวิชา\thaidissdegreefield \par
   \makebox{คณะ\thaischoolname} \par
%   \makebox{\schoolname} in partial fulfillment \par
%   of the requirements for the degree of \par \dissdegree \par
   มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี \par 
   ปีการศึกษา\ \thaidissyear \par}
 \emptyline 1
\begin{flushleft}
คณะกรรมการสอบ\thaiworktype \par\par
\begin{tabular*}{\textwidth}{@{}c@{\extracolsep{0.45cm}}l@{}}
   & \\
%%%%% Chairman %%%%%%%%%%%%%%%%%%%%%%%%%
  \dotrule{2.7in} & ประธานกรรมการสอบโครงานศึกษาวิจัย\\
  (\thaidisscommitteechair) & \\ 
   & \\
  \dotrule{2.7in} & กรรมการและอาจารย์ที่ปรึกษา\thaiworktype \\
    (\thaidissadvisor) & \\
   & \\
\ifx \titleempty\thaicoadvisor
\else
  \dotrule{2.7in} & กรรมการและอาจารย์ที่ปรึกษาร่วม\thaiworktype  \\
    (\thaidisscoadvisor) & \\
   & \\
\fi
%%%%%%% 3rd committee %%%%%%%%%%%%%%%%%%
  \dotrule{2.7in} & กรรมการ \\
  (\thaidisscommitteetwo) & \\
   & \\
%%%%%%% 4th committee %%%%%%%%%%%%%%%%%%
\ifx \titleempty\thaidisscommitteethree \else
  \dotrule{2.7in} & กรรมการ \\
  (\thaidisscommitteethree) & \\
  & \\
\fi
%%%%%%%% 5th committee %%%%%%%%%%%%%%%%
\ifx \titleempty\thaidisscommitteefour \else
  \dotrule{2.7in} & กรรมการ \\
  (\thaidisscommitteefour) & \\
   & \\
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{tabular*}
\end{flushleft}
\begin{center}	
\vspace*{\fill}ลิขสิทธิ์ของมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี
\end{center}	
\newpage\baselineskip \truebaselineskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Thai Abstract %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\thaiabstract{
\newpage
%\setcounter{page}{1}
\addcontentsline{toc}{chapterx}{\mdseries บทคัดย่อ}
%\thispagestyle{plain}
\begin{flushleft}
\begin{tabular}{@{}lp{0.7\textwidth}}
 หัวข้อ\thaiworktype & \thaidisstitleone\ \\ 
\ifx \titleempty\thaidisstitletwo \else
              & \thaidisstitletwo \\
\fi
 หน่วยกิต & \disscredit \\
 ผู้เขียน & \thaidissauthor \\
 อาจารย์ที่ปรึกษา & \thaidissadvisor \\
\ifx \titleempty\thaidisscoadvisor \else
              & \thaidisscoadvisor \\
\fi
 หลักสูตร & \thaidissdegree \\
 สาขาวิชา & \thaidissdegreefield \\
 ภาควิชา & \thaidepartment \\
 คณะ & \thaischoolname \\
ปีการศึกษา & \thaidissyear 
\end{tabular}
\end{flushleft}

\emptyline 1
\begin{center} 
  บทคัดย่อ
\end{center}
\par
}
%\def\endthaiabstract{\newpage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% English Abstract %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\abstract{
\newpage
%\pagestyle{plainthai}%
%\thispagestyle{plain}
\addcontentsline{toc}{chapterx}{\mdseries บทคัดย่อภาษาอังกฤษ}
\begin{flushleft}
\begin{tabular}{@{}lp{0.7\textwidth}}
 \worktype\ Title & \disstitleone\ \\ 
\ifx \titleempty\disstitletwo \else
              & \disstitletwo \\
\fi
\worktype\ Credits & \disscredit\\
Candidate & \dissauthor \\
\ifx \titleempty\disscoadvisor\worktype\ Advisor & \dissadvisor\\
\else\worktype\ Advisors &\dissadvisor\\
              & \disscoadvisor \\
\fi
%\worktype\ Advisors & \dissadvisor \\
%\ifx \titleempty\disscoadvisor \else
%              & \disscoadvisor \\
%\fi
 Program & \dissdegree \\
 Field of Study & \dissdegreefield \\
 Department & \department \\
 Faculty & \schoolname \\
 Academic Year & \dissyear
\end{tabular}
\end{flushleft}
%}
\emptyline 1
\begin{center} 
  Abstract
\end{center}
\par
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Acknowledgement %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\preface{\chapter*{\normalsize กิตติกรรมประกาศ}%
\addcontentsline{toc}{chapterx}{\mdseries กิตติกรรมประกาศ}
%\pagestyle{plainthai}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Content page %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Table of contents
\setcounter{tocdepth}{5}  % must be same as secnumdepth
\def\contentsname{สารบัญ}
\def\tableofcontents{
\addcontentsline{toc}{chapterx}{\mdseries สารบัญ}\chapter*{\normalsize\contentsname\@mkboth{}{}%
 \\ \emptyline 1 \hfill\textbf{หน้า}\\[-0.4em]}{\ssp\@starttoc{toc}}
%\pagestyle{plainthai}
}
%\def\tableofcontents{
%\newpage
%\addcontentsline{toc}{chapterx}{สารบัญ}
%\thispagestyle{plain}
%\begin{center}
%\textbf{สารบัญ}\@mkboth{}{}%
%\\ \emptyline 1 \hfill\textbf{หน้า}\\[-0.4em]
%\end{center}
%{\ssp\@starttoc{toc}}
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% List of table page %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% List of tables
\def\listtablename{รายการตาราง}
\def\listoftables{
\chapter*{\normalsize รายการตาราง\@mkboth{}{}
\\ \emptyline 1 \normalsize\textbf{ตาราง}\hfill\textbf{หน้า}\\[-0.4em] }
   \addcontentsline{toc}{chapterx}{\mdseries รายการตาราง} {\ssp\@starttoc{lot}}
%\pagestyle{plainthai}
}
%\def\l@table{}
%\def\l@table{\vskip 1.0em plus\p@\@dottedtocline{1}{1.5em}{2.3em}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% List of figure page %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\listfigurename{รายการรูปประกอบ}
\def\listoffigures{
\chapter*{\normalsize รายการรูปประกอบ\@mkboth{}{}\\
   \emptyline 1
   \normalsize\textbf{รูป}\hfill\textbf{หน้า}\\[-0.4em]  }
   %\pagestyle{plainthai}
   \addcontentsline{toc}{chapterx}{\mdseries รายการรูปประกอบ} {\ssp\@starttoc{lof}}}
\let\l@figure\l@table

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% List of symbol page %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\listofsymbols{\chapter*{\normalsize รายการสัญลักษณ์}
\addcontentsline{toc}{chapterx}{\mdseries รายการสัญลักษณ์}
   %\pagestyle{plainthai}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% List of vocab page %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\listofvocab{\chapter*{\normalsize ประมวลศัพท์และคำย่อ}%
\addcontentsline{toc}{chapterx}{\mdseries ประมวลศัพท์และคำย่อ}
   %\pagestyle{plainthai}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Appendix pages %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\firstappendixtrue
%\def\appendixnames{ภาคผนวก} % assume only one appendix
%\def\appendixcover#1{%
%\newpage\pagestyle{plain}\thispagestyle{empty}
%\iffirstappendix %
%  \setcounter{chapter}{0} % Reset chapter numbering
%  \renewcommand{\thechapter}{\thalpha{chapter}}
%  \def\@chapapp{\MakeUppercase{\appendixname}}%
%  \addcontentsline{toc}{chapter}{\mdseries\bf \MakeUppercase{\appendixnames}}%
%  \firstappendixfalse% 
%\fi 
%   \setcounter{equation}{0} % Reset equation numbering
%   \addtocounter{chapter}{1}  % Start the 1st appendix 
%   {\centering{\vbox{}\vfill \MakeUppercase{\bf
%    ภาคผนวก \thechapter} \par \MakeUppercase{#1} \vfill\vbox{}}}\newpage}
%%   {\centering{\vbox{}\vfill \MakeUppercase{{\normalsize\bf APPENDIX
%%\thechapter}} \par \MakeUppercase{#1}} \vfill\vbox{}}}\newpage}
%
%\def\appendix#1{% 
%\appendixcover{#1}
%\addcontentsline{toc}{apdx}{\thechapter\hskip 1em #1}%
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Bibliography page %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\refname{เอกสารอ้างอิง}
\def\referencepage{\chapter*{\large\bf \refname}%
\addcontentsline{toc}{chapter}{\mdseries\bf เอกสารอ้างอิง}\thispagestyle{empty}
}
%\def\bibliographycover{\newpage \typeout{\bibname .} \thispagestyle{empty}
%   {\centering{\vbox{}\vfill {\LARGE\bf \bibname} \vfill\vbox{}}}\newpage}
%%% Change the brackets to dot around bib number.%%%%%%%%%%%%%%
\newdimen\bibindent
\bibindent=2em
\def\@biblabel#1{#1.}
\def\thebibliography#1{%\bibliographycover
  %\chapter*{\bibname\@mkboth{}{}}
  %\addcontentsline{toc}{chapter}{\bibname} \ssp
  \referencepage \vspace*{-10\p@}\ssp\pagestyle{plain}	% Change the \vspace* to comply with the KMUTT format
  \list{\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \usecounter{enumiv} \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000 \sfcode`\.=\@m }
\def\endthebibliography{\ifdraftmode \dsp \fi
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}} \endlist}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Vitae %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\vitae{
\clearpage
\chapter*{\large\bf ประวัติผู้วิจัย}%
\addcontentsline{toc}{chapter}{\normalsize\bf ประวัติผู้วิจัย}
%\pagestyle{plain}\thispagestyle{plain}
}

% ************************************************************
% personal stuff

%\input latexsym.sty
\usepackage{latexsym}

\newcounter{definition}[chapter]
\newenvironment{definition}[1]{\refstepcounter{definition}
   \par\hbox{}\par\noindent
   {\bfseries Definition \thechapter.\thedefinition\ #1}
   \par\noindent\ignorespaces}
   {\par\hbox{}\par}

\newenvironment{proof}{
   \par\noindent{\bfseries Proof: }\ignorespaces}
   { $\Box$\par\hbox{}\par}

% *******************************************************************
\endinput

