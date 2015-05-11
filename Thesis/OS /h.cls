%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Thesis.cls - LaTeX2e class for CU Theses.
%% To conform to the University of Colorado at Boulder
%%	Graduate School SPECIFICATIONS (July 1997) for
%%	Preparation of Master's Thesis and Doctoral Dissertations
%% Version 1.00 written by John P. Weiss, 1997
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	version 1.10, E. Joshua Rigler, January 2003 -- making it safe
%%		for folks who inadvertently load setspace.sty, changed
%%		\latex@xfloat to \latexx@xfloat
%%	version 1.09, BF, November 2000 -- conforms to revised specs
%%		no significant changes required
%%	version 1.08, Steven V Penton, September 1999 -- added
%%		\readerFive; moved list of tables in front of figures
%%	version 1.07, BF, January 1999 -- fixed \LoFisShort etc.
%%	version 1.06, BF, November 1998 -- fixed level 4 headers;
%%		SubSubSections, inline4 & nonum4.  Eliminated
%%		unwanted space before chapter/section numbers.
%%	version 1.05, BF, August 1998 -- Footnotes and floats
%%		(captions) now singlespaced, fixing an omission
%%		in v1.04.  Fixed value of \belowcaptionskip,
%%		for table captions.
%%	version 1.04, BF, July 1998, Adjusted doublespacing
%%		(no longer uses setspace.sty) and margin values.
%%	version 1.03, May 1998, Bruce Fast -- Added optional
%%		\readerThree{}, \readerFour{}; LoF/LoT debugging;
%%		doublespaced abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{thesis}[2000/11/03]	% version 1.09

\typeout{}
\typeout{--------------------------------------------------------------}
\typeout{ +---+ Thesis Style (thesis.cls) version 1.09, November 2000}
\typeout{ +---+ for University of Colorado Ph.D. theses/dissertations.}
\typeout{ * Conforms to the University of Colorado at Boulder Graduate}
\typeout{ * School "SPECIFICATIONS for Preparation of Master's Thesis}
\typeout{ * and Doctoral Dissertations" (rev. February 2000).}
\typeout{--------------------------------------------------------------}
\typeout{ URL: http://www.Colorado.EDU/ITS/docs/latex/ThesisClass}
\typeout{}

% Certain options are not handled here but are passed on to report.cls
% by \PassOptionToClass.

\DeclareOption{fleqn}{ \PassOptionsToClass{fleqn}{report} }
\DeclareOption{leqno}{ \PassOptionsToClass{leqno}{report} }
\DeclareOption{openbib}{ \PassOptionsToClass{openbib}{report} }
\DeclareOption{draft}{ \PassOptionsToClass{draft}{report} }
\DeclareOption{final}{ \PassOptionsToClass{final}{report} }
\DeclareOption{openright}{ \PassOptionsToClass{openright}{report} }
\DeclareOption{openany}{ \PassOptionsToClass{openany}{report} }
\DeclareOption{10pt}{ \PassOptionsToClass{10pt}{report} }
\DeclareOption{11pt}{ \PassOptionsToClass{11pt}{report} }
\DeclareOption{12pt}{ \PassOptionsToClass{12pt}{report} }

% Invalid options - normally used in report.cls and others, but not here:

\DeclareOption{titlepage}
   {\ClassWarning{thesis}{Title page always generated. Option ignored.}}
\DeclareOption{notitlepage}
   {\ClassWarning{thesis}{Option 'notitlepage' not available for thesis.}}
\DeclareOption{twoside}
   {\ClassWarning{thesis}{Option 'twoside' not available for thesis.}}
\DeclareOption{twocolumn}
   {\ClassWarning{thesis}{Option 'twocolumn' not available for thesis.}}
\DeclareOption{landscape}
   {\ClassWarning{thesis}{Option 'landscape' not available for thesis.}}
\DeclareOption{legalpaper}
   {\ClassWarning{thesis}{Option 'legalpaper' not available for thesis.}}
\DeclareOption{a4paper}
   {\ClassWarning{thesis}{Option 'a4paper' not available for this class.}}
\DeclareOption{a5paper}
   {\ClassWarning{thesis}{Option 'a5paper' not available for this class.}}
\DeclareOption{executivepaper}
   {\ClassWarning{thesis}{Option 'executivepaper' not available.}}
\DeclareOption{b5paper}
   {\ClassWarning{thesis}{Option 'b5paper' not available for this class.}}
\DeclareOption{letterpaper}
   {\ClassWarning{thesis}{Option 'letterpaper' superfluous. Ignored.}}
\DeclareOption{onecolumn}
   {\ClassWarning{thesis}{Option 'onecolumn' superfluous.  Ignored.}}
\DeclareOption{oneside}
   {\ClassWarning{thesis}{Option 'oneside' superfluous.  Ignored.}}

%%%%%%%%%%% CUSTOM OPTIONS:
% Options for no decimal numbering, or decimal number nested over 3 deep:
\newif\if@AllHeadings
\newif\if@NumberStdHeadings
\newif\if@PerChptrNumbering
\newif\if@emphisbold
\newif\if@boldhead
\newif\if@fixedHeadSz
\newif\if@headSizeTwelvePt
\newif\if@ChapterDefault
\newif\if@SectionDefault
\newif\if@SubSectionDefault
\newif\if@OtherHeadingDefault
\newif\if@centerChapter
\newif\if@centerSection
\newif\if@inlineSubSubSection
\newif\if@numberSubSubSection
\newif\if@chapterCaps
\@AllHeadingsfalse
\@NumberStdHeadingstrue
\@PerChptrNumberingtrue
\@emphisboldtrue
\@boldheadtrue
\@fixedHeadSzfalse
\@centerChaptertrue
\@centerSectionfalse
\@inlineSubSubSectionfalse
\@numberSubSubSectiontrue
\@chapterCapsfalse
\@headSizeTwelvePttrue
\DeclareOption{consecutivenumbering}{ \@PerChptrNumberingfalse }
\DeclareOption{inlineh4}{ \@inlineSubSubSectiontrue }
\DeclareOption{nonumh4}{ \@numberSubSubSectionfalse }
\DeclareOption{centerh1}{ \@centerSectiontrue }
\DeclareOption{chapleft}{ \@centerSectiontrue }
\DeclareOption{chapup}{ \@chapterCapstrue }
\DeclareOption{emph2underline}{ \@emphisboldfalse }
\DeclareOption{plainhead}{ \@boldheadfalse }
\DeclareOption{fixedheadsize}{ \@fixedHeadSztrue }
\DeclareOption{varheadsize}{\@headSizeTwelvePtfalse}% Hidden option.  Don't use.
\DeclareOption{numberchapteronly}{
	\@PerChptrNumberingfalse\@NumberStdHeadingsfalse\@AllHeadingsfalse
	\@centerChaptertrue\@centerSectiontrue
	\@inlineSubSubSectiontrue\@numberSubSubSectionfalse }
\DeclareOption{allheadings}{
	\@PerChptrNumberingtrue\@NumberStdHeadingstrue\@AllHeadingstrue
	\@centerChaptertrue\@centerSectionfalse
	\@inlineSubSubSectionfalse\@numberSubSubSectiontrue}
\DeclareOption{typewriterstyle}{ \@emphisboldfalse
	\@PerChptrNumberingfalse\@NumberStdHeadingsfalse\@AllHeadingsfalse
	\@centerChaptertrue\@centerSectiontrue\@chapterCapstrue
	\@inlineSubSubSectiontrue\@numberSubSubSectionfalse
	\@boldheadfalse\@fixedHeadSztrue}
\DeclareOption{modernstyle}{ \@emphisboldtrue
	\@PerChptrNumberingtrue\@NumberStdHeadingstrue\@AllHeadingsfalse
	\@centerChaptertrue\@centerSectionfalse\@chapterCapsfalse
	\@inlineSubSubSectiontrue\@numberSubSubSectionfalse
	\@boldheadtrue\@fixedHeadSzfalse}
\DeclareOption{defaultstyle}{ \@emphisboldtrue
	\@PerChptrNumberingtrue\@NumberStdHeadingstrue\@AllHeadingsfalse
	\@centerChaptertrue\@centerSectionfalse\@chapterCapsfalse
	\@inlineSubSubSectionfalse\@numberSubSubSectiontrue
	\@boldheadtrue\@fixedHeadSzfalse}

% Now we load the report class with certain options by default.  It
% will process any other options specified.  Then, we process the
% options for this class file.  Lastly, we load in the font option
% file for the given font size.

\ProcessOptions
\LoadClass[letterpaper,oneside,onecolumn]{report}[1996/10/31]

% Other required LaTeX2e packages: if your computer doesn't already
% have these, you can copy them to your own directory (URL above):

\RequirePackage{indentfirst}		% indentfirst.sty, 1995/11/23
\RequirePackage{ifthen}			% ifthen.sty, 1996/08/02
\RequirePackage[ULforem,normalbf]{ulem}	% ulem.sty, 1995/12/17


%%%%%% SPECIAL INTERNAL COMMANDS.  Needed by later routines.

% Create a command to be used for default arguments.
\newcommand*{\th@DefArg}{aWfdRvV11f66GL00K5}

% Now create a command to check for the default argument, and call the
% command [in the first arg] appropriately.  Used for section heading
% commands.

\newcommand{\th@ExecChkOptArg}[3]{
\ifthenelse{\equal{\th@DefArg}{#2}}{
	#1{#3}
	}{
	#1[#2]{#3}}
}

% Controls the heading styles.  You can change the size to suit your needs.

\if@fixedHeadSz
	\newcommand*{\th@ChSz}{\normalfont}
	\newcommand*{\th@ScSz}{\normalfont}
\else\if@headSizeTwelvePt
	\newcommand*{\th@ChSz}{\normalsize\fontsize{12}{12}\selectfont}
	\newcommand*{\th@ScSz}{\normalsize\fontsize{12}{12}\selectfont}
\else
	\newcommand*{\th@ChSz}{\normalsize\Large}
	\newcommand*{\th@ScSz}{\normalsize\large}
\fi\fi

\if@boldhead
	\newcommand*{\th@HdFnt}{\normalfont\bfseries}
\else
	\newcommand*{\th@HdFnt}{\normalfont}
\fi

% The style commands proper.  Controlled by a flag.

\newif\if@thInHeading
\@thInHeadingfalse
\newcommand*{\th@ChapterStyle}{\if@thInHeading\th@HdFnt\th@ChSz\fi}
\newcommand*{\th@SectionStyle}{\if@thInHeading\th@HdFnt\th@ScSz\fi}
\newcommand*{\th@SubSectionStyle}{\if@thInHeading\normalsize\th@HdFnt\fi}
\newcommand*{\th@OtherSecHeadStyles}{\if@thInHeading\normalsize\th@HdFnt\fi}

% Re-define the emphasis commands to use either BOLDFACE or UNDERLINING,
% depending on the startup flags.

\newcommand*{\EmphReset}{
	\if@emphisbold
		\let\em\bfseries
		\let\emph\textbf
	\else
		\ULforem
	\fi
}

% Makes the chapter heading label, putting it in the desired style.
% We need to define it here, since we need it before redefining the
% chapter commands.

\newcommand*{\th@DoChapCenter}{\if@centerChapter\centering\fi}
\newcommand*{\th@ChapHead}[1]{
	\protect\th@ChapterStyle
	\protect\th@DoChapCenter #1}


%%%%%%% DEFINE DOUBLE-SPACING (THE DEFAULT) AND OTHER SPACING:
\def\setspace@size{\ifx\@currsize\normalsize\@normalsize\else\@currsize\fi}
\def\doublespacing{ \ifcase \@ptsize \relax
      \def \baselinestretch {2.004}%	10pt
  \or \def \baselinestretch {1.771}%	11pt
  \or \def \baselinestretch {1.660}%	12pt
  \fi \setspace@size}
\def\singlespacing{\def \baselinestretch {1} \setspace@size \vskip \baselineskip}
\def\setstretch#1{\renewcommand{\baselinestretch}{#1}}
\def\@setsize#1#2#3#4{\@nomath#1
  \let\@currsize#1 \baselineskip #2
  \baselineskip \baselinestretch\baselineskip
  \parskip \baselinestretch\parskip
  \setbox\strutbox \hbox{ \vrule height.7\baselineskip depth.3\baselineskip
  width\z@} \skip\footins \baselinestretch\skip\footins
  \normalbaselineskip\baselineskip#3#4}
%%%%%%%%% floats & footnotes singlespaced %%%%%%%%%
\let\latexx@xfloat=\@xfloat
\def\@xfloat #1[#2]{\latexx@xfloat #1[#2]
\def\baselinestretch{1}\@normalsize \normalsize}
\long\def\@footnotetext#1{
  \insert\footins{
    \def\baselinestretch {1}
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{
      \csname p@footnote\endcsname\@thefnmark}
    \color@begingroup \@makefntext{
        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}
    \color@endgroup}}
\long\def\@mpfootnotetext#1{
  \global\setbox\@mpfootins\vbox{
    \unvbox \@mpfootins
    \def\baselinestretch {1}
    \reset@font\footnotesize
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{
      \csname p@mpfootnote\endcsname\@thefnmark}
    \color@begingroup \@makefntext{
       \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}
   \color@endgroup}}
%%%%%%%% single / double spacing %%%%%%%%%
\def\singlespace{ \vskip \baselineskip \def\baselinestretch {1}
  \setspace@size \vskip -\baselineskip }
\def\endsinglespace{\par}
\def\spacing#1{ \par \begingroup \def\baselinestretch {#1} \setspace@size }
\def\endspacing{ \par \vskip \parskip \vskip \baselineskip
  \endgroup \vskip -\parskip \vskip -\baselineskip }
\def\oneandahalfspace{ \ifcase \@ptsize \relax
      \spacing{1.330}
  \fi }
\def\doublespace{ \ifcase \@ptsize \relax
      \spacing{2.004}%	10pt
  \or \spacing{1.771}%	11pt
  \or \spacing{1.660}%	12pt
  \fi }
\let\enddoublespace=\endspacing



%%%%% SET THE OVERALL DOCUMENT PROPERTIES, such as page numbering,
% margins... Initialize several global document properties, but do so
% *before* the beginning of the document to forces these changes.
\AtBeginDocument{
	\setlength{\topmargin}{-0.30in}
	\setlength{\headheight}{0.0in}
	\setlength{\headsep}{0.0in}
	\setlength{\topskip}{0.40in}	% first line, down from page number
	%\setlength{\textheight}{9.10in}	% 9"-(topmargin+headsep+headheight)
	\setlength{\textheight}{11in}	% 9"-(topmargin+headsep+headheight)
	\setlength{\footskip}{0pt}
	\setlength{\oddsidemargin}{0.75in}
	\setlength{\evensidemargin}{0.75in}
	\setlength{\parindent}{30pt}	% somewhere between 0.3" and 0.5"
	%\setlength{\textwidth}{7in}
	\setlength{\textwidth}{5.75in}
	\setlength{\leftmargini}{3.5em}
	%\setlength{\leftmargini}{-0.75em}
	%\setlength{\leftmarginii}{1.2em}
	\setlength{\leftmarginii}{2.2em}
	\setlength{\leftmarginiii}{2.2em}
	\setlength{\leftmarginiv}{2.2em}
	\setlength{\leftmarginv}{2.2em}
	\setlength{\leftmarginvi}{2.2em}
	\setlength{\leftmargin}{\leftmargini}
	\setlength{\labelsep}{.5em}
	\setlength{\labelwidth}{ 1.5em}
	\pagenumbering{arabic}
	\pagestyle{myheadings}
	\markright{}
	\onecolumn
	\raggedbottom
	\normalsize
	\normalfont
	\EmphReset	% bold or underlined?
	\doublespacing	% footnotes and floats still singlespaced
	\setcounter{tocdepth}{2}
	\setcounter{secnumdepth}{\value{th@SecNum}}
% Redefine the bibliography command here, just in case someone
% uses a custom *.sty file that redefines bibliography command
	\let\th@OldBib\thebibliography
	\let\endth@OldBib\endthebibliography
	\renewenvironment*{thebibliography}[1]{
		\begin{th@OldBib}{#1}
		\ULforem%  set \em to underline
		\begin{singlespace}
		\addcontentsline{toc}{part}{\bibnameToC}
	}{
		\end{singlespace}
		\EmphReset% set \em back to the user-specified default.
		\end{th@OldBib}
	}
}

%%%%%%%%%%% ADDITIONAL STUFF:
\setcounter{tocdepth}{2}
\newcommand*{\@normalsize}{\normalsize}
\doublespacing

%  Figures and Tables
\setcounter{topnumber}{1}
\renewcommand*{\topfraction}{.4}
\setcounter{totalnumber}{2}
\renewcommand*{\textfraction}{.5}
\renewcommand*{\floatpagefraction}{.3}
\setcounter{dbltopnumber}{1}
\renewcommand*{\dbltopfraction}{.4}
\renewcommand*{\dblfloatpagefraction}{.3}
\setlength{\abovecaptionskip}{10pt}
\setlength{\belowcaptionskip}{10pt}

% Re-define some formatting commands to produce lists, labels,
% and numberings that are more to the Grad School's liking.

% Set up some titles on the table of contents page.
\renewcommand*{\figurename}{Figure}
\renewcommand*{\tablename}{Table}
\newcommand*{\figurenameToC}{\normalsize\th@HdFnt\figurename\normalfont}
\newcommand*{\tablenameToC}{\normalsize\th@HdFnt\tablename\normalfont}

\if@chapterCaps
	\renewcommand*{\contentsname}{\th@ChapHead{CONTENTS}}
	\renewcommand*{\listfigurename}{\th@ChapHead{FIGURES}}
	\renewcommand*{\listtablename}{\th@ChapHead{TABLES}}
	\renewcommand*{\appendixname}{\th@ChapHead{APPENDIX}}
	\renewcommand*{\bibname}{\th@ChapHead{BIBLIOGRAPHY}}
	\renewcommand*{\chaptername}{\th@ChapHead{CHAPTER}}
	\newcommand*{\chapternameToC}{
		\normalsize\th@HdFnt CHAPTER\normalfont}
	\newcommand*{\bibnameToC}{
		\normalsize\th@HdFnt  BIBLIOGRAPHY\normalfont}
	\newcommand*{\appendixnameToC}{
	\normalsize\th@HdFnt  APPENDIX\normalfont}
\else
	\renewcommand*{\contentsname}{\th@ChapHead{Contents}}
	\renewcommand*{\listfigurename}{\th@ChapHead{Figures}}
	\renewcommand*{\listtablename}{\th@ChapHead{Tables}}
	\renewcommand*{\appendixname}{\th@ChapHead{Appendix}}
	\renewcommand*{\bibname}{\th@ChapHead{Bibliography}}
	\renewcommand*{\chaptername}{\th@ChapHead{Chapter}}
	\newcommand*{\chapternameToC}{
		\normalsize\th@HdFnt Chapter\normalfont}
	\newcommand*{\bibnameToC}{
		\normalsize\th@HdFnt  Bibliography\normalfont}
	\newcommand*{\appendixnameToC}{
		\normalsize\th@HdFnt  Appendix\normalfont}
\fi

% Adds the appropriate label to the ToC/LoF/LoT

\addtocontents{lof}{\protect\contentsline {part}
	{\protect\figurenameToC}{\protect\relax}}
\addtocontents{lot}{\protect\contentsline {part}
	{\protect\tablenameToC}{\protect\relax}}
\addtocontents{toc}{\protect\contentsline {part}
	{\protect\chapternameToC}{\protect\relax}}

% NUMBERING STYLES, DEFAULT VALUES

% Using macros of the form \th@Def* avoids conflicts with
% LaTeX internals which use \theDef* forms...

\newcounter{th@SecNum}
\setcounter{th@SecNum}{3}
\if@NumberStdHeadings
    \@centerSectionfalse% Force this.
    \newcommand*{\th@DefTheChapter}{\arabic{chapter}}
    \newcommand*{\th@DefTheSection}{\th@DefTheChapter.\arabic{section}}
    \newcommand*{\th@DefTheSubsection}{\th@DefTheSection.\arabic{subsection}}
\else
    \@AllHeadingsfalse% Just to be safe...
    \newcommand*{\th@DefTheChapter}{\Roman{chapter}}
    \newcommand*{\th@DefTheSection}{\relax}
    \newcommand*{\th@DefTheSubsection}{\relax}
\fi

\if@AllHeadings
	\@inlineSubSubSectionfalse% Force this...
	\@numberSubSubSectiontrue% ...and this.
	\newcommand*{\th@DefTheSubsubsection}
		{\th@DefTheSubsection.\arabic{subsubsection}}
	\newcommand*{\th@DefTheParagraph}
		{\th@DefTheSubsubsection.\arabic{paragraph}}
	\newcommand*{\th@DefTheSubparagraph}
		{\th@DefTheParagraph.\arabic{subparagraph}}
\else
	\newcommand*{\th@DefTheParagraph}{\relax}
	\newcommand*{\th@DefTheSubparagraph}{\relax}
	\if@numberSubSubSection
		\newcommand*{\th@DefTheSubsubsection}
			{\th@DefTheSubsection.\arabic{subsubsection}}
	\else
		\newcommand*{\th@DefTheSubsubsection}{\relax}
	\fi
\fi
\renewcommand*{\thechapter}{\th@DefTheChapter}
\renewcommand*{\thesection}{\th@DefTheSection}
\renewcommand*{\thesubsection}{\th@DefTheSubsection}
\renewcommand*{\thesubsubsection}{\th@DefTheSubsubsection}
\renewcommand*{\theparagraph}{\th@DefTheParagraph}
\renewcommand*{\thesubparagraph}{\th@DefTheSubparagraph}

% Figure, Table, and Equation numbering.
\if@PerChptrNumbering\else
   	\newcounter{th@SaveFigure}
    \newcounter{th@SaveTable}
    \newcounter{th@SaveEquation}
    \renewcommand*{\thefigure}{\arabic{figure}}
    \renewcommand*{\thetable}{\arabic{table}}
    \renewcommand*{\theequation}{\arabic{equation}}
\fi

% Enumerated List labels
\renewcommand*{\theenumi}{\arabic{enumi}}
\renewcommand*{\theenumii}{\alph{enumii}}
\renewcommand*{\theenumiii}{\roman{enumiii}}
\renewcommand*{\theenumiv}{\alph{enumiv}}
\renewcommand*{\labelenumi}{(\theenumi)}
\renewcommand*{\labelenumii}{(\theenumii)}
\renewcommand*{\labelenumiii}{(\theenumiii)}
\renewcommand*{\labelenumiv}{(\theenumiii.\theenumiv)}

% Itemized list labels.
\renewcommand*{\labelitemi}{\textbullet}
\renewcommand*{\labelitemii}{\textasteriskcentered}
\renewcommand*{\labelitemiii}{\normalfont \bfseries \textendash}
\renewcommand*{\labelitemiv}{\textperiodcentered}

% Margins for lists
\setlength{\leftmargini}{3.5em}
\setlength{\leftmarginiii}{2.2em}
\setlength{\leftmarginiv}{2.2em}
\setlength{\leftmarginv}{2.2em}
\setlength{\leftmarginvi}{2.2em}
\setlength{\leftmargin}{\leftmargini}
\setlength{\labelwidth}{1.5em}

% Redefine certain commands and environments from report.cls.
% This is where things get messy.  We rename each command we modify,
% then redefine the command using the old version as subset.

% VERSE, QUOTATION, and QUOTE must be single-spaced.
% These rename the internal commands for the \begin{...} and
% \end{...} environment commands.
\let\th@OldVerse\verse
\let\th@OldQuotation\quotation
\let\th@OldQuote\quote
\let\endth@OldVerse\endverse
\let\endth@OldQuotation\endquotation
\let\endth@OldQuote\endquote

% Note - the ``\begin{singlespace}'' and ``\end{singlespace}''
% are defined in setspace.sty.

\renewenvironment*{verse}{\begin{th@OldVerse}\begin{singlespace}}
	{\end{singlespace}\end{th@OldVerse}}

\renewenvironment*{quotation}{\begin{th@OldQuotation} \begin{singlespace}}
	{\end{singlespace}\end{th@OldQuotation}}

\renewenvironment*{quote}{\begin{th@OldQuote} \begin{singlespace}}
	{\end{singlespace} \end{th@OldQuote}}

% Theorems and Axioms:  They must NOT be italicized.  To do this
% robustly, I've needed to use some in-depth TeXnology.  Check out a
% good LaTeX book for info on the \@namedef and \@nameuse commands.

\let\th@OldNewtheorem\newtheorem
% Check for the calling format: \newtheorem{}[]{}
\def\newtheorem#1{ \@ifnextchar[{\th@nuthrmOM{#1}}{\th@newtheoremTwo{#1}}%]
}
% Calling format: \newtheorem{}{}[]; checks for the optional arg at the end.
\def\th@newtheoremTwo#1#2{
	\@ifnextchar[{\th@nuthrmO{#1}{#2}}{\th@nuthrm{#1}{#2}}%]
}
% Standard call.  No optional args.
\def\th@nuthrm#1#2{
	\th@OldNewtheorem{th@#1}{#2}
	\th@correctTheorem{end#1}{#1}{endth@#1}{th@#1}
}
% Optional arg at end.
\def\th@nuthrmO#1#2[#3]{
	\th@OldNewtheorem{th@#1}{#2}[#3]
	\th@correctTheorem{end#1}{#1}{endth@#1}{th@#1}
	}
% Optional arg in the middle.
\def\th@nuthrmOM#1[#2]#3{
	\th@OldNewtheorem{th@#1}[th@#2]{#3}
	\th@correctTheorem{end#1}{#1}{endth@#1}{th@#1}
	}
\def\th@execThrmOpt#1[#2]{
	\@nameuse{#1}[#2] \normalsize\normalfont
}
\newcommand*{\th@correctTheorem}[4]{
	\@namedef{#1}{\@nameuse{#3}}
	\@namedef{#2}{\@ifnextchar[{\th@execThrmOpt{#4}}{ %%}
			\@nameuse{#4} \normalsize\normalfont}
	}
}

% APPENDIX command
\newcounter{th@SectionSave}
\let\th@OldAppCmd\appendix
\renewcommand{\appendix}{
	\setcounter{th@SectionSave}{\value{section}}
	\th@OldAppCmd
	\if@NumberStdHeadings\else
		\setcounter{section}{\value{th@SectionSave}}
	\fi
	\addtocontents{toc}{\protect\contentsline {part}
		{\protect\appendixnameToC}{\protect\relax}}
	\renewcommand*{\th@DefTheChapter}{\Alph{chapter}}
	}

%%%%%%%%%%%%%%% BIBLIOGRAPHY: Used to be redefined here.
% Moved to permit use of different bibliography .sty and .bst files.
% It's now in the '\AtBeginDocument' command.

%%%%%%%%%%%%%%% SECTION HEADINGS (including several new options):
% New if-s
\newif\if@AlwaysFalse
\@AlwaysFalsefalse
\newif\if@CenterHeading
\@CenterHeadingfalse
\newif\if@UseStarCmd
\@UseStarCmdfalse

%%%%%%%%%%%%%%% GENERAL AND SETUP COMMANDS.
% Makes a heading.
% The optional argument (#1) is a centering flag. The heading gets
% centered if it's present and set to true.
% The second arg is the style command.
% The third arg is the heading proper.
\newcommand*{\th@MakeHeading}[2]{
	\protect #1
	\if@CenterHeading\begin{center}\typeout{centered}\fi
	#2
	\if@CenterHeading\end{center}\fi
	}

% Makes a heading.
% The entire thing is something of a mess.  We want all ToC entries to
% be in normal text.  We also want references in normal text.  But, we
% want the heading numbers to appear in the correct size and font.  To
% get this to happen is a chore.

% The args are, in order:
%    The command to execute (#1),
%    The heading style command (#2),
%    The optional arg passed to the heading command proper (#3).
%    E.g. if you execute a \section[foo]{bigfoo}, #3=="foo".
%    The heading text itself (#4).
%    The name of the current command (#5). E.g. "chapter".
%    The internal command that generates the number label (#6).

% There are also two important flags used by this command.  The first
% is \@UseStarCmd.  Set this to "true" if this is the starred version
% of the command.  The second flag is \@thInHeading.  This gets set
% 'true' inside the section heading commands and turned off at the end
% of the command.

\newcommand*{\th@Heading}[6]{
	\@thInHeadingtrue
	% Alter the '\the...' command.
	\@namedef{the#5}{\protect#2 #6}
	\if@UseStarCmd
		#1*{\th@MakeHeading{\protect#2}{#4}}
	\else
		\ifthenelse{\equal{\th@DefArg}{#3}}{
			#1[\normalsize\normalfont#4]{
				\th@MakeHeading{\protect#2}{#4}}
		}{
			#1[\normalsize\normalfont#3]{
				\th@MakeHeading{\protect#2}{#4}}
		}
	\fi
% Reset the '\the...' command, but don't enforce
% '\normalsize\normalfont' anywhere, as this messes up
% cross-references in footnotes.
	\@namedef{the#5}{#6}
	\@thInHeadingfalse
	\@CenterHeadingfalse
	\normalsize\normalfont
}

%%%%%%%%%%% CHAPTER HEADING:
% The chapter command definitely needs some re-defining.  The primary
% purpose is to control numbering in figures, tables, and equations.

\let\th@OldChapter\chapter
% The \@ifstar{}{} is a LaTeX tool to check the character following
% the command and see if it's a '*'.
\renewcommand*{\chapter}{\@ifstar{\th@ChapterS}{\th@Chapter}}

% Special if-s; used internally for chapters.
\newif\if@THshortChapter
\@THshortChapterfalse

% We define a special command for stepping the chapter counter,
% zeroing the figure, table, and equation counters only if necessary.

\newcommand*{\th@PreChCmd}{
	\if@PerChptrNumbering
		\relax
	\else
		\setcounter{th@SaveTable}{\value{table}}
		\setcounter{th@SaveFigure}{\value{figure}}
		\setcounter{th@SaveEquation}{\value{equation}}
	\fi
}

\newcommand*{\th@PostChCmd}{
	\if@THshortChapter
		\typeout{Short Chapter (page numbered)}
		\@THshortChapterfalse
		\thispagestyle{myheadings}
	\else
		\thispagestyle{empty}
	\fi
	\if@PerChptrNumbering
		\relax
	\else
		\setcounter{table}{\value{th@SaveTable}}
		\setcounter{figure}{\value{th@SaveFigure}}
		\setcounter{equation}{\value{th@SaveEquation}}
	\fi
	\normalsize\normalfont
	\@UseStarCmdfalse
}
\if@chapterCaps
	\newcommand*{\th@Chapter}[2][\th@DefArg]{
		\th@PreChCmd
		\@UseStarCmdfalse
		\if@centerChapter\@CenterHeadingtrue\else\@CenterHeadingfalse\fi
		\th@Heading{\th@OldChapter}{\th@ChapterStyle}{#1}
			{\uppercase\expandafter{#2}}{chapter}{\th@DefTheChapter}
		\th@PostChCmd
	}
	\newcommand*{\th@ChapterS}[1]{
		\th@PreChCmd
		\@UseStarCmdtrue
		\if@centerChapter\@CenterHeadingtrue\else\@CenterHeadingfalse\fi
		\th@Heading{\th@OldChapter}{\th@ChapterStyle}{\th@DefArg}
			{\uppercase\expandafter{#1}}{chapter}{\th@DefTheChapter}
		\th@PostChCmd
	}
\else
	\newcommand*{\th@Chapter}[2][\th@DefArg]{
		\th@PreChCmd
		\@UseStarCmdfalse
		\if@centerChapter\@CenterHeadingtrue\else\@CenterHeadingfalse\fi
		\th@Heading{\th@OldChapter}{\th@ChapterStyle}{#1}
			{#2}{chapter}{\th@DefTheChapter}
		\th@PostChCmd
	}
	\newcommand*{\th@ChapterS}[1]{
		\th@PreChCmd
		\@UseStarCmdtrue
		\if@centerChapter\@CenterHeadingtrue\else\@CenterHeadingfalse\fi
		\th@Heading{\th@OldChapter}{\th@ChapterStyle}{\th@DefArg}
			{#1}{chapter}{\th@DefTheChapter}
		\th@PostChCmd
	}
\fi

%%%%%%%%% SECTION HEADING COMMANDS.  We need to use the starred version
% and add the numbering and toc-entry ourselves.  We need to do this
% for all of the subsequent heading commands.  If we don't we'll get
% weird-looking ToC entries and references.

\let\th@OldSection\section
\renewcommand*{\section}{\@ifstar{\th@SectionS}{\th@Section}}

\newcommand*{\th@Section}[2][\th@DefArg]{
	\@UseStarCmdfalse
	\if@centerSection\@CenterHeadingtrue\else\@CenterHeadingfalse\fi
	\th@Heading{\th@OldSection}{\th@SectionStyle}{#1}{#2}
		{section}{\th@DefTheSection}
	\normalsize\normalfont
}
\newcommand*{\th@SectionS}[1]{
	\@UseStarCmdtrue
	\if@centerSection\@CenterHeadingtrue\else\@CenterHeadingfalse\fi
	\th@Heading{\th@OldSection}{\th@SectionStyle}{\th@DefArg}
		{#1}{section}{\th@DefTheSection}
	\@UseStarCmdfalse
	\normalsize\normalfont
}

%%%%%%%%%% SUBSECTION HEADING COMMANDS.

\let\th@OldSubSection\subsection
\renewcommand*{\subsection}{
	\@ifstar{\th@SubSectionS}{\th@SubSection}
}
\newcommand*{\th@SubSection}[2][\th@DefArg]{
	\@UseStarCmdfalse
	\@CenterHeadingfalse
	\th@Heading{\th@OldSubSection}{\th@SubSectionStyle}
		{#1}{#2}{subsection}{\th@DefTheSubsection}
	\normalsize\normalfont
}
\newcommand*{\th@SubSectionS}[1]{
	\@UseStarCmdtrue
	\@CenterHeadingfalse
	\th@Heading{\th@OldSubSection}{\th@SubSectionStyle}
		{\th@DefArg}{#1}{subsection}{\th@DefTheSubsection}
	\@UseStarCmdfalse
	\normalsize\normalfont
}

%%%%%%%%%% SUBSUBSECTION HEADING COMMANDS.  No starred version permitted.
% No ToC entry.  We also need to check and see if we should number
% it or not and if we should inline it or not.

\let\th@OldSubSubSection\subsubsection
\newlength{\th@SubSubSecSpc}
\if@numberSubSubSection
	\renewcommand*{\thesubsubsection}{\th@DefTheSubsubsection}
	\newcommand*{\th@PreSubsubsecCmd}{\@UseStarCmdfalse}
	\setcounter{th@SecNum}{4}
	\setlength{\th@SubSubSecSpc}{0.5em}
\else
	\renewcommand*{\thesubsubsection}{\relax}
	\newcommand*{\th@PreSubsubsecCmd}{\@UseStarCmdtrue}
	\setlength{\th@SubSubSecSpc}{0em}
\fi

\newif\if@shutoffSSSect
\@shutoffSSSectfalse

\if@inlineSubSubSection
\renewcommand*{\subsubsection}[2][\th@DefArg]{
	\refstepcounter{subsubsection}
	\vspace{4\parsep}
	\underline{%
	\@thInHeadingtrue\th@OtherSecHeadStyles%
	\thesubsubsection\hspace{\th@SubSubSecSpc}#2}\hspace{2mm}
	\ignorespaces\normalsize\normalfont
	}
\else
\renewcommand*{\subsubsection}[2][\th@DefArg]{
	\th@PreSubsubsecCmd
	\@CenterHeadingfalse
	\th@Heading{\th@OldSubSubSection}{\th@OtherSecHeadStyles}
		{\th@DefArg}{#2}{subsubsection}{\th@DefTheSubsubsection}
	\@UseStarCmdfalse\normalsize\normalfont
	}
\fi

% We don't need to do much for paragraph and subparagraph.  We won't
% even define a *-version or permit entries in the ToC.
\if@AllHeadings
	\let\th@OldParagraph\paragraph
	\renewcommand*{\paragraph}[2][\th@DefArg]{
		\@UseStarCmdfalse
		\@CenterHeadingfalse
		\th@Heading{\th@OldParagraph}
			{\@thInHeadingtrue\th@OtherSecHeadStyles}
			{\th@DefArg}{\underline{#2}}{paragraph}
			{\hspace*{\parindent}\th@DefTheParagraph}
		\@UseStarCmdfalse
		\@namedef{theparagraph}{\th@DefTheParagraph
			\protect\normalsize\protect\normalfont}
		\normalsize\normalfont
	}
	\let\th@OldSubParagraph\subparagraph
	\renewcommand*{\subparagraph}[2][\th@DefArg]{
		\@UseStarCmdfalse
		\@CenterHeadingfalse
		\th@Heading{\th@OldSubParagraph}
			{\@thInHeadingtrue\th@OtherSecHeadStyles}
			{\th@DefArg}{\underline{#2}}{subparagraph}
			{\th@DefTheSubparagraph}
		\@UseStarCmdfalse
		\@namedef{thesubparagraph}{\th@DefTheSubparagraph
			\protect\normalsize\protect\normalfont}
		\normalsize\normalfont
	}
	\setcounter{th@SecNum}{5}
\else
	\renewcommand*{\paragraph}[2][\th@DefArg]{
		{\normalfont\normalsize\bfseries #2}\hspace*{0.89em}}
	\renewcommand*{\subparagraph}[2][\th@DefArg]{
		{\normalfont\normalsize\bfseries #2}\hspace*{0.89em}}
\fi


%%%%%%%%%% COMMANDS CHANGED FOR THIS CLASS
%%%%%% Unavailable commands
\renewcommand*{\theindex}{\ClassWarning{thesis}
	{Indexing not available in this class.}}
\renewcommand*{\twocolumn}{\ClassWarning{thesis}
	{Twocolumn not available in this class.}}
\renewcommand*{\thepart}{\ClassWarning{thesis}
	{``thepart'' not available in this class.}}
\renewcommand*{\part}{\ClassWarning{thesis}
	{``thepart'' not available in this class.}}
%%%%%% New commands
% This forces a page number on the first page of a chapter, etc.
\newcommand*{\forcepageno}{\thispagestyle{myheadings}}
\newcommand*{\OnePageChapter}{\forcepageno}


%%%%%%%%%%% THESIS PROLOGUE PAGES:
% Stores the second arg in the command specified by the first arg.
\newcommand{\th@StoreIn}[2]{ \gdef#1{#2} }
% Default values of storage variables.  Emits an error message.
% This part of the class is long...
\newcommand*{\th@title}{
	\ClassError{thesis}{
		You must specify a title!}
	{Use the \protect\title{} command in the preamble.}
}
\newcommand*{\th@fwdname}{
	\ClassError{thesis}{
		You must specify your name!}
	{Use the \protect\author{}{} command in the \MessageBreak
		preamble. The first arg is your first name and \MessageBreak
		middle initial.  The second arg is your last name.}
}
\newcommand*{\th@revname}{
	\ClassError{thesis}{
		You must specify your name!}
	{Use the \protect\author{}{} command in the \MessageBreak
		preamble. The first arg is your first name and \MessageBreak
		middle initial.  The second arg is your last name.}
}
\newcommand*{\th@deptname}{
	\ClassError{thesis}{
		You must specify the name of the department \MessageBreak
		granting your degree and what type of \MessageBreak
		organization it is within the University.}
	{Use the \protect\dept{}{} command in the \MessageBreak
		preamble.  The second arg is the name of the \MessageBreak
		department.  The first arg is the department's \MessageBreak
		official designation, e.g. 'College of', \MessageBreak
		'Department of', 'School of', etc.}
}
\newcommand*{\th@deptorg}{
	\ClassError{thesis}{
		You must specify the name of the department \MessageBreak
		granting your degree and what type of \MessageBreak
		organization it is within the University.}
	{Use the \protect\dept{}{} command in the \MessageBreak
		preamble.  The second arg is the name of the \MessageBreak
		department.  The first arg is the department's \MessageBreak
		official designation, e.g. 'College of', \MessageBreak
		'Department of', 'School of', etc.}
}
\newcommand*{\th@advisor}{
	\ClassError{thesis}{
		You must specify your research advisor's name \MessageBreak
		and full title.}
	{Use the \protect\advisor{}{} command in the \MessageBreak
		preamble.  The first arg is your advisor's \MessageBreak
		full title.  The second arg is your advisor's \MessageBreak
		name.}
}
\newcommand*{\th@advisortitle}{
	\ClassError{thesis}{
		You must specify your research advisor's name \MessageBreak
		and full title.}
	{Use the \protect\advisor{}{} command in the \MessageBreak
		preamble.  The first arg is your advisor's \MessageBreak
		full title.  The second arg is your advisor's \MessageBreak
		name.}
}
\newcommand*{\th@reader}{
	\ClassError{thesis}{
		You must specify the name of the other \MessageBreak
		committee member who will be signing your \MessageBreak
		thesis.}
	{Use the \protect\reader{} command in the preamble.}
}
\newcommand*{\th@readerThree}{none}	% optional
\newcommand*{\th@readerFour}{none}	% optional
\newcommand*{\th@readerFive}{none}	% optional
\newcommand*{\th@fulldegree}{
	\ClassError{thesis}{
		You must specify the type of degree you are \MessageBreak
		receiving.}
	{Use the \protect\degree{}{} command in the \MessageBreak
		preamble.  The first arg is the unabbreviated \MessageBreak
		name of the degree itself, e.g. \MessageBreak
		'Doctor of Philosophy'.  The second arg is the \MessageBreak
		degree abbreviation followed by the subject, e.g.\MessageBreak
		'Ph. D., Biology'.}
}
\newcommand*{\th@degree}{
	\ClassError{thesis}{
		You must specify the type of degree you are \MessageBreak
		receiving.}
	{Use the \protect\degree{}{} command in the \MessageBreak
		preamble.  The first arg is the unabbreviated \MessageBreak
		name of the degree itself, e.g. \MessageBreak
		'Doctor of Philosophy'.  The second arg is the \MessageBreak
		degree abbreviation followed by the subject, \MessageBreak
		e.g. 'Ph. D., Biology'.}
}
%\newcommand{\th@otherdegrees}{
%	\ClassError{thesis}{
%		You must specify other degrees you hold!}
%	{Use the \protect\otherdegrees{} command in the \MessageBreak
%		preamble.  Break each line using the \protect\\ \MessageBreak
%		command.}
%}
\newcommand{\th@abstractStash}{
	\ClassError{thesis}{
		You must specify an abstract!}
	{Use the \protect\abstractpage[]{} command in the \MessageBreak
		preamble.  If your abstract runs over a page, \MessageBreak
		use the optional argument with the word 'long'.}
}
\newcommand*{\th@degreeyear}{\number\the\year}
%\newcommand*{\th@degreeyear}{2004}
\newcommand*{\th@signature}[1]{ \begin{center}
		\normalsize
		\vspace*{16mm}	% works well?
		\vrule width 80mm height 0.2mm\\
		#1 \end{center}
}
\newcommand*{\th@dateline}{
	\vspace*{9mm}
	\begin{flushright}
		Date~{\vrule width 35mm height 0.2mm}
	\end{flushright}
}
\newcommand{\th@AbstractPageStyle}{\relax}
\newcommand{\th@dedicationStash}{\relax}
\newcommand{\th@dedicationTitleStash}{\relax}
\newcommand{\th@acknowledgementsStash}{\relax}
\newif\if@shortLoF
\newif\if@shortLoT
\newif\if@shortToC
\newif\if@makenoLoF
\newif\if@makenoLoT
\newif\if@makeDedication
\newif\if@makeAcknowledgements
\newif\if@makePrologue
\@shortLoFfalse
\@shortLoTfalse
\@shortToCfalse
\@makenoLoFfalse
\@makenoLoTfalse
\@makeDedicationfalse
\@makeAcknowledgementsfalse
\@makeProloguetrue

% The base commands that make all of the prologue pages.
\newcommand*{\th@Titlepage}{
	\thispagestyle{empty}
	\@thInHeadingtrue
	%\null\vfill
	\begin{list}{}{\setlength{\leftmargin}{-0.8in}
			%	\setlength{\textheight}{3in}
			%	\setlength{\leftmargini}{0.75in}
			%	\setlength{\leftmarginii}{0.75in}
			%	\setlength{\leftmarginiii}{0.75in}
			%	\setlength{\leftmarginiv}{0.75in}
			%	\setlength{\leftmarginv}{0.75in}
			%	\setlength{\leftmarginvi}{0.75in}
				\setlength{\rightmargin}{0.5in}\sloppy}
		\centering\item[]
		{\th@ChapterStyle
			\if@chapterCaps
				\uppercase\expandafter{\th@title}\\
			\else
%	\begin{center}
%				\huge{\th@title}\\
%	\end{center}
			\fi}

	%	\th@otherdegrees\\
	%	\vspace*{5mm}
	%	under the guidance of\\
	%	{\th@ChapterStyle
	%		Ms.
        %                \if@chapterCaps
        %                        \uppercase\expandafter{\th@advisor}\\
        %                \else
        %                        \th@advisor\\
        %                \fi}
	\end{list}
	%\begin{center}
	%	\vspace*{2mm}
	%	\epsfxsize=25mm
	%	\epsfbox{figures/nitclogo} \\
	%	\vspace*{2mm}
	%\end{center}
	\begin{center}
		%\vfill
%	\begin{center}
				\huge\bf{\th@title}\\
%	\end{center}
	\begin{singlespace}
		\large\it A thesis submitted in\\ 
		 partial fulfilment of the requirements for the degree of  \\ 
		\vspace{3mm} 
		%\textbf{\th@fulldegree} \\
		{\textbf\th@fulldegree} \\
		in \\
		\textbf{Computer Science and Engineering}  \\
		%\textbf{National Institute of Technology, Calicut} \\

		%\th@deptorg\ \th@deptname\\
		by\\
		{\th@OtherSecHeadStyles
			\if@chapterCaps
				\uppercase\expandafter{\th@fwdname}\\
			\else
			{\large\th@fwdname}\\
			\fi}
	\end{singlespace}
	\vfill
	%\vspace{0.5cm}
	\begin{center}
		\vspace*{2mm}
		\epsfxsize=25mm
		\epsfbox{figures/nitclogo} 
		\vspace*{1mm}
	\end{center}
	\begin{singlespace}
		\large\textbf{Department of Computer Engineering}  \\
		\Large\bf National Institute of technology, Calicut \\
		\small{Kerala - 673601} \\
		\ \th@degreeyear \\
	\end{singlespace}
	\end{center}
	\@thInHeadingfalse
	%\vfill
}
\newcommand*{\th@Approvalpage}{
	\singlespacing
	\clearpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\begin{center}
		{\Huge Certificate}\\
		\vspace*{2cm}
		{\large\it
		This thesis entitled:} \\
		\vspace{0.5cm}
		{\Large\bf\th@title} \\
		\vspace{0.5cm}
		{\large\it written by} \\
		{\Large\bf\th@fwdname} \\
		\vspace{0.5cm}
		{\large\it	has been approved for the} \\
		{\Large\bf\th@deptorg\ \th@deptname}
	\end{center}
		\vfill
		\begin{center}
			\vspace*{5cm}
			\rule[2cm]{15cm}{0.2pt}
		\end{center}
		\parbox[t]{8.5cm}{
		\large\bf{\th@advisor}\\
		\normalfont\it{Guide}\\
		\normalfont\it{Asst. Professor\\Dept.of Computer Engineering}}
                %\hspace{0.01cm}
		%\hfill
		%\hspace{0.1cm}
 		%\hfill
		\parbox[t]{8.5cm}{
		\large\bf{\th@reader} \\
	        \normalfont\it{Professor and \\ Head} \\
		\normalfont\it{Dept.of Computer Engineering}}
		%\th@dateline
	\vspace*{\fill}
%	\begin{center}
%		The final copy of this thesis has been examined by
%		the signatories, and we find that both the content
%		and the form meet acceptable presentation standards
%		of scholarly work in the above mentioned discipline.
%	\end{center}
%	\vspace*{\fill}
}
%\newcommand{\th@Abstractpage}{
%	\clearpage
%	\th@AbstractPageStyle
%	\doublespacing	% 1998 revision of Grad School Specs
%	\begin{list}{}{\setlength{\leftmargin}{2em}
%			\setlength{\itemindent}{-2em}
%			\setlength{\topsep}{0pt}
%			\setlength{\itemsep}{0pt}}
%		\item \th@revname\ (\th@degree)
%		\item \th@title
 %       \item Thesis directed by \th@advisortitle\ \th@advisor
%	\end{list}
%	\par
%	\vspace*{4\parsep}
%	\th@abstractStash	% finally, the actual abstract
%}

\newcommand{\th@Abstractpage}{
       \clearpage
%       \th@AbstractPageStylie
        \chapter*{Abstract}
       \doublespacing  % 1998 revision of Grad School Specs
%       \begin{list}{}{\setlength{\leftmargin}{2em}
%                       \setlength{\itemindent}{-2em}
%                       \setlength{\topsep}{0pt}
%                       \setlength{\itemsep}{0pt}}
%               \item \th@revname\ (\th@degree)
%               \item \th@title
%       \item Thesis directed by \th@advisortitle\ \th@advisor
%       \end{list}
%       \par
%       \vspace*{4\parsep}
       \th@abstractStash       % finally, the actual abstract
}

\newcommand{\th@Dedicationpage}{
	\if@makeDedication
		\clearpage
		\thispagestyle{empty}
		\ifthenelse{\equal{\th@DefArg}{\th@dedicationTitleStash}
			}{\vfill}{\chapter*{\th@dedicationTitleStash}}
		\th@dedicationStash
		\ifthenelse{\equal{\th@DefArg}{\th@dedicationTitleStash}
			}{\vfill}{\relax}
	\fi
}
\newcommand{\th@Acknowledgementpage}{
	\if@makeAcknowledgements
		\clearpage
		\chapter*{Acknowledgements}
		{\doublespacing
		\th@acknowledgementsStash}
	\fi
}
%\newcommand{\th@Abstractpage}{
%       \clearpage
%       \th@AbstractPageStylie
%	\chapter*{Abstract}
%       \doublespacing  % 1998 revision of Grad School Specs
%       \begin{list}{}{\setlength{\leftmargin}{2em}
%                       \setlength{\itemindent}{-2em}
%                       \setlength{\topsep}{0pt}
%                       \setlength{\itemsep}{0pt}}
%               \item \th@revname\ (\th@degree)
%               \item \th@title
%       \item Thesis directed by \th@advisortitle\ \th@advisor
%       \end{list}
%       \par
%       \vspace*{4\parsep}
%       \th@abstractStash       % finally, the actual abstract
%}

\newcommand{\th@ToCpage}{
	\@THshortChapterfalse
	\if@shortToC
		\@THshortChaptertrue
		\typeout{Making Short ToC...}
	\fi
	\@thInHeadingfalse
	{\doublespacing
	\tableofcontents}
}

\newcommand{\th@LoTpage}{
	\@THshortChapterfalse
	\if@makenoLoT
		\typeout{Skipping LoT...}
	\else
	\if@shortLoT
		\@THshortChaptertrue
		\typeout{Making Short LoT...}
	\fi
	{\doublespacing
	\listoftables}
	\fi
}

\newcommand{\th@LoFpage}{
	\@THshortChapterfalse
	\if@makenoLoF
		\typeout{Skipping LoF...}
	\else
	\if@shortLoF
		\@THshortChaptertrue
		\typeout{Making Short LoF...}
	\fi
	{\doublespacing
	\listoffigures}
	\fi
}


% This performs the actual generation of the prologue
\newcounter{th@storepage}
\newcommand{\th@MakeThesisPrologue}{
	\if@makePrologue
		\pagenumbering{roman}
		\typeout{Making Title Page}
		\th@Titlepage
		\typeout{Making Approval Page}
		\th@Approvalpage
		\typeout{Making Abstract Page}
		\th@Abstractpage
		\typeout{Making Dedication Page}
		\th@Dedicationpage
		\typeout{Making Acknowledgement Page}
		\th@Acknowledgementpage
		\typeout{Making Abstract Page}
                %\th@Abstractpage
		\setcounter{th@storepage}{\value{page}}
		\typeout{Making ToC Page}
		\th@ToCpage
		\typeout{Making LoT Page}
		\th@LoTpage
		\typeout{Making LoF Page}
		\th@LoFpage
	\fi
}


% Make the generator-command the very first command of the document.
\let\th@OldBeginDocument\document
\renewcommand*{\document}{
	\th@OldBeginDocument
	\th@MakeThesisPrologue
	\typeout{}
	\typeout{}
	\typeout{-------------------Beginning Body----------------------}
	\typeout{}
	\typeout{}
	\doublespacing
	\clearpage
	\pagenumbering{arabic}
	\@THshortChapterfalse
}

%%%%%%%%% USER COMMANDS FOR CONTROLLING THE PROLOGUE:
\renewcommand*{\title}[1]{\th@StoreIn{\th@title}{#1}}
\newcommand*{\reader}[1]{\th@StoreIn{\th@reader}{#1}}
\newcommand*{\readerThree}[1]{\th@StoreIn{\th@readerThree}{#1}}
\newcommand*{\readerFour}[1]{\th@StoreIn{\th@readerFour}{#1}}
\newcommand*{\readerFive}[1]{\th@StoreIn{\th@readerFive}{#1}}
\newcommand*{\degreeyear}[1]{\th@StoreIn{\th@degreeyear}{#1}}
%\newcommand{\otherdegrees}[1]{\th@StoreIn{\th@otherdegrees}{#1}}
\newcommand{\acknowledgements}[1]{
	\@makeAcknowledgementstrue
	\th@StoreIn{\th@acknowledgementsStash}{#1}
}
\newcommand{\dedication}[2][\th@DefArg]{
	\@makeDedicationtrue
	\th@StoreIn{\th@dedicationTitleStash}{#1}
	\th@StoreIn{\th@dedicationStash}{#2}
}
\renewcommand*{\author}[2]{
	\th@StoreIn{\th@fwdname}{#1 #2}
	\th@StoreIn{\th@revname}{#2, #1}
}
\newcommand*{\degree}[2]{
	\th@StoreIn{\th@fulldegree}{#1}
	\th@StoreIn{\th@degree}{#2}
}
\newcommand*{\advisor}[2]{
	\th@StoreIn{\th@advisor}{#2}
	\th@StoreIn{\th@advisortitle}{#1}
}
\newcommand*{\dept}[2]{
	\th@StoreIn{\th@deptorg}{#1}
	\th@StoreIn{\th@deptname}{#2}
}
\renewcommand{\abstract}[2][long]{
	\ifthenelse{\equal{#1}{short}}{\relax}{
		\th@StoreIn{\th@AbstractPageStyle}{\thispagestyle{empty}}
	}
	\th@StoreIn{\th@abstractStash}{#2}
}
\newcommand*{\SuspendPrologue}{
	\@makeProloguefalse
	\typeout{No prologue pages printed.}
}
\newcommand*{\emptyLoF}{
	\@makenoLoFtrue
	\typeout{No LoF printed}
}
\newcommand*{\emptyLoT}{
	\@makenoLoTtrue
	\typeout{No LoT printed}
}
\newcommand*{\ToCisShort}{
	\@shortToCtrue
	\typeout{Putting page number on short ToC}
}
\newcommand*{\LoFisShort}{
	\@shortLoFtrue
	\typeout{Putting page number on short LoF}
}
\newcommand*{\LoTisShort}{
	\@shortLoTtrue
	\typeout{Putting page number on short LoT}
}
\endinput
%%%%%%%%%%%%%%%% End of file ``thesis.cls''
