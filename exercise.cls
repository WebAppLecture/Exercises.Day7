% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "exercise.cls",
%     version         = "1.0",
%     date            = "12 September 2014",
%     codetable       = "UTF-8",
%     keywords        = "LaTeX, Florian. Rappl, Exercise, Template",
%     supported       = "send email to mail@florian-rappl.de",
%     docstring       = "The thesis class used for exercise sheets."
% --------------------------------------------------------------------
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercise}[2014/09/12 The exercise sheet style]
\LoadClass[12pt, a4paper]{article}
%
\RequirePackage{kvoptions}
\RequirePackage{fancyhdr}
\RequirePackage{fancyheadings}
\RequirePackage[ngerman,german]{babel}
\RequirePackage{german}
\RequirePackage[utf8]{inputenc}
\RequirePackage[active]{srcltx}
\RequirePackage{algorithm}
\RequirePackage[noend]{algorithmic}
\RequirePackage{color}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{bbm}
\RequirePackage{enumerate}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{ifthen}
\RequirePackage{listings}
\RequirePackage{struktex}
\PassOptionsToPackage{hyphens}{url}
\RequirePackage{hyperref}
\RequirePackage{upquote}
\RequirePackage{titlesec}
%
\titleformat*{\section}{\large\bfseries}
%
\definecolor{editorGray}{rgb}{0.95, 0.95, 0.95}
\definecolor{editorOcher}{rgb}{1, 0.5, 0}
\definecolor{editorGreen}{rgb}{0, 0.5, 0}
%
\DeclareStringOption[1]{sheet}
\ProcessKeyvalOptions*
%
%------------------------------------------
% HEADER
%------------------------------------------
\newcommand{\Sheet}{\exercise@sheet}
\newcommand{\Lecture}{WebApplications mit HTML5, CSS3 und JavaScript}
\newcommand{\Name}{Markus Huber, Florian Rappl}
\newcommand{\Semester}{WS 2015/16}
\newcommand{\University}{Universität Regensburg}
%
%------------------------------------------
% COMMANDS
%------------------------------------------
\newcommand{\Exercise}[1]{
  {
    \vspace*{0.5cm}
    \section{#1}
    \vspace*{0.2cm}
  }
}
\newcommand{\RequiredExercise}[1]{
	\Exercise{#1*}
}
\newcommand{\Remark}[1]{
  {
    \vspace*{0.5cm}
    \par {\color{purple}{#1}}
  }
}
\newcommand{\htag}[1]{\textcolor{editorOcher}{\texttt{<#1>}}}
\newcommand{\jfunc}[1]{\textcolor{editorGreen}{\texttt{#1()}}}
\newcommand{\jvar}[1]{\textcolor{editorGreen}{\texttt{#1}}}
\newcommand{\jkey}[1]{\textcolor{blue}{\texttt{#1}}}
\newcommand{\degree}{$^{\circ}$}
\newcommand{\qty}[2]{\textcolor{red}{$#1$#2}}
\newcommand{\hcolor}[1]{\textcolor{red}{\##1}}
%
%------------------------------------------
% LISTING SETUP
%------------------------------------------
\lstdefinelanguage{JavaScript}{
	morekeywords={break, case, catch, continue, debugger, default, delete, do, else, false, finally, for, function, if, in, instanceof, new, null, return, switch, this, throw, true, try, typeof, var, void, while, with},
	morecomment=[s]{/*}{*/},
	morecomment=[l]//,
	morestring=[b]",
	morestring=[b]'
}
\lstdefinelanguage{CSS}{
	keywords={accelerator,azimuth,background,background-attachment,background-color,background-image,background-position,background-position-x,background-position-y,background-repeat,behavior,border,border-bottom,border-bottom-color,border-bottom-style,border-bottom-width,border-collapse,border-color,border-left,border-left-color,border-left-style,border-left-width,border-right,border-right-color,border-right-style,border-right-width,border-spacing,border-style,border-top,border-top-color,border-top-style,border-top-width,border-width,bottom,caption-side,clear,clip,color,content,counter-increment,counter-reset,cue,cue-after,cue-before,cursor,direction,display,elevation,empty-cells,filter,float,font,font-family,font-size,font-size-adjust,font-stretch,font-style,font-variant,font-weight,height,ime-mode,include-source,layer-background-color,layer-background-image,layout-flow,layout-grid,layout-grid-char,layout-grid-char-spacing,layout-grid-line,layout-grid-mode,layout-grid-type,left,letter-spacing,line-break,line-height,list-style,list-style-image,list-style-position,list-style-type,margin,margin-bottom,margin-left,margin-right,margin-top,marker-offset,marks,max-height,max-width,min-height,min-width,-moz-binding,-moz-border-radius,-moz-border-radius-topleft,-moz-border-radius-topright,-moz-border-radius-bottomright,-moz-border-radius-bottomleft,-moz-border-top-colors,-moz-border-right-colors,-moz-border-bottom-colors,-moz-border-left-colors,-moz-opacity,-moz-outline,-moz-outline-color,-moz-outline-style,-moz-outline-width,-moz-user-focus,-moz-user-input,-moz-user-modify,-moz-user-select,orphans,outline,outline-color,outline-style,outline-width,overflow,overflow-X,overflow-Y,padding,padding-bottom,padding-left,padding-right,padding-top,page,page-break-after,page-break-before,page-break-inside,pause,pause-after,pause-before,pitch,pitch-range,play-during,position,quotes,-replace,richness,right,ruby-align,ruby-overhang,ruby-position,-set-link-source,size,speak,speak-header,speak-numeral,speak-punctuation,speech-rate,stress,scrollbar-arrow-color,scrollbar-base-color,scrollbar-dark-shadow-color,scrollbar-face-color,scrollbar-highlight-color,scrollbar-shadow-color,scrollbar-3d-light-color,scrollbar-track-color,table-layout,text-align,text-align-last,text-decoration,text-indent,text-justify,text-overflow,text-shadow,text-transform,text-autospace,text-kashida-space,text-underline-position,top,unicode-bidi,-use-link-source,vertical-align,visibility,voice-family,volume,white-space,widows,width,word-break,word-spacing,word-wrap,writing-mode,z-index,zoom},  ensitive=true,
	morecomment=[l]{//},
	morecomment=[s]{/*}{*/},
	morestring=[b]',
	morestring=[b]",
	alsoletter={:},
	alsodigit={-}
}
\lstdefinelanguage{HTML5}{
	language=html,
	sensitive=true, 
	alsoletter={<>=-},
	otherkeywords={<, </, >, </a, <a, </a>, </abbr, <abbr, </abbr>, </address, <address, </address>, </area, <area, </area>, </area, <area, </area>, </article, <article, </article>, </aside, <aside, </aside>, </audio, <audio, </audio>, </audio, <audio, </audio>, </b, <b, </b>, </base, <base, </base>, </bdi, <bdi, </bdi>, </bdo, <bdo, </bdo>, </blockquote, <blockquote, </blockquote>, </body, <body, </body>, </br, <br, </br>, </button, <button, </button>, </canvas, <canvas, </canvas>, </caption, <caption, </caption>, </cite, <cite, </cite>, </code, <code, </code>, </col, <col, </col>, </colgroup, <colgroup, </colgroup>, </data, <data, </data>, </datalist, <datalist, </datalist>, </dd, <dd, </dd>, </del, <del, </del>, </details, <details, </details>, </dfn, <dfn, </dfn>, </div, <div, </div>, </dl, <dl, </dl>, </dt, <dt, </dt>, </em, <em, </em>, </embed, <embed, </embed>, </fieldset, <fieldset, </fieldset>, </figcaption, <figcaption, </figcaption>, </figure, <figure, </figure>, </footer, <footer, </footer>, </form, <form, </form>, </h1, <h1, </h1>, </h2, <h2, </h2>, </h3, <h3, </h3>, </h4, <h4, </h4>, </h5, <h5, </h5>, </h6, <h6, </h6>, </head, <head, </head>, </header, <header, </header>, </hr, <hr, </hr>, </html, <html, </html>, </i, <i, </i>, </iframe, <iframe, </iframe>, </img, <img, </img>, </input, <input, </input>, </ins, <ins, </ins>, </kbd, <kbd, </kbd>, </keygen, <keygen, </keygen>, </label, <label, </label>, </legend, <legend, </legend>, </li, <li, </li>, </link, <link, </link>, </main, <main, </main>, </map, <map, </map>, </mark, <mark, </mark>, </math, <math, </math>, </menu, <menu, </menu>, </menuitem, <menuitem, </menuitem>, </meta, <meta, </meta>, </meter, <meter, </meter>, </nav, <nav, </nav>, </noscript, <noscript, </noscript>, </object, <object, </object>, </ol, <ol, </ol>, </optgroup, <optgroup, </optgroup>, </option, <option, </option>, </output, <output, </output>, </p, <p, </p>, </param, <param, </param>, </pre, <pre, </pre>, </progress, <progress, </progress>, </q, <q, </q>, </rp, <rp, </rp>, </rt, <rt, </rt>, </ruby, <ruby, </ruby>, </s, <s, </s>, </samp, <samp, </samp>, </script, <script, </script>, </section, <section, </section>, </select, <select, </select>, </small, <small, </small>, </source, <source, </source>, </span, <span, </span>, </strong, <strong, </strong>, </style, <style, </style>, </summary, <summary, </summary>, </sup, <sup, </sup>, </svg, <svg, </svg>, </table, <table, </table>, </tbody, <tbody, </tbody>, </td, <td, </td>, </template, <template, </template>, </textarea, <textarea, </textarea>, </tfoot, <tfoot, </tfoot>, </th, <th, </th>, </thead, <thead, </thead>, </time, <time, </time>, </title, <title, </title>, </tr, <tr, </tr>, </track, <track, </track>, </u, <u, </u>, </ul, <ul, </ul>, </var, <var, </var>, </video, <video, </video>, </wbr, <wbr, </wbr>, />, <!},  
	ndkeywords={=,
        % HTML attributes
		accept=, accept-charset=, accesskey=, action=, align=, alt=, async=, autocomplete=, autofocus=, autoplay=, autosave=, bgcolor=, border=, buffered=, challenge=, charset=, checked=, cite=, class=, code=, codebase=, color=, cols=, colspan=, content=, contenteditable=, contextmenu=, controls=, coords=, data=, datetime=, default=, defer=, dir=, dirname=, disabled=, download=, draggable=, dropzone=, enctype=, for=, form=, formaction=, headers=, height=, hidden=, high=, href=, hreflang=, http-equiv=, icon=, id=, ismap=, itemprop=, keytype=, kind=, label=, lang=, language=, list=, loop=, low=, manifest=, max=, maxlength=, media=, method=, min=, multiple=, name=, novalidate=, open=, optimum=, pattern=, ping=, placeholder=, poster=, preload=, pubdate=, radiogroup=, readonly=, rel=, required=, reversed=, rows=, rowspan=, sandbox=, scope=, scoped=, seamless=, selected=, shape=, size=, sizes=, span=, spellcheck=, src=, srcdoc=, srclang=, start=, step=, style=, summary=, tabindex=, target=, title=, type=, usemap=, value=, width=, wrap=,
		% CSS properties
		accelerator:,azimuth:,background:,background-attachment:,background-color:,background-image:,background-position:,background-position-x:,background-position-y:,background-repeat:,behavior:,border:,border-bottom:,border-bottom-color:,border-bottom-style:,border-bottom-width:,border-collapse:,border-color:,border-left:,border-left-color:,border-left-style:,border-left-width:,border-right:,border-right-color:,border-right-style:,border-right-width:,border-spacing:,border-style:,border-top:,border-top-color:,border-top-style:,border-top-width:,border-width:,bottom:,caption-side:,clear:,clip:,color:,content:,counter-increment:,counter-reset:,cue:,cue-after:,cue-before:,cursor:,direction:,display:,elevation:,empty-cells:,filter:,float:,font:,font-family:,font-size:,font-size-adjust:,font-stretch:,font-style:,font-variant:,font-weight:,height:,ime-mode:,include-source:,layer-background-color:,layer-background-image:,layout-flow:,layout-grid:,layout-grid-char:,layout-grid-char-spacing:,layout-grid-line:,layout-grid-mode:,layout-grid-type:,left:,letter-spacing:,line-break:,line-height:,list-style:,list-style-image:,list-style-position:,list-style-type:,margin:,margin-bottom:,margin-left:,margin-right:,margin-top:,marker-offset:,marks:,max-height:,max-width:,min-height:,min-width:,transition-duration:,transition-property:,transition-timing-function:,transform:,-moz-transform:,-moz-binding:,-moz-border-radius:,-moz-border-radius-topleft:,-moz-border-radius-topright:,-moz-border-radius-bottomright:,-moz-border-radius-bottomleft:,-moz-border-top-colors:,-moz-border-right-colors:,-moz-border-bottom-colors:,-moz-border-left-colors:,-moz-opacity:,-moz-outline:,-moz-outline-color:,-moz-outline-style:,-moz-outline-width:,-moz-user-focus:,-moz-user-input:,-moz-user-modify:,-moz-user-select:,orphans:,outline:,outline-color:,outline-style:,outline-width:,overflow:,overflow-X:,overflow-Y:,padding:,padding-bottom:,padding-left:,padding-right:,padding-top:,page:,page-break-after:,page-break-before:,page-break-inside:,pause:,pause-after:,pause-before:,pitch:,pitch-range:,play-during:,position:,quotes:,-replace:,richness:,right:,ruby-align:,ruby-overhang:,ruby-position:,-set-link-source:,size:,speak:,speak-header:,speak-numeral:,speak-punctuation:,speech-rate:,stress:,scrollbar-arrow-color:,scrollbar-base-color:,scrollbar-dark-shadow-color:,scrollbar-face-color:,scrollbar-highlight-color:,scrollbar-shadow-color:,scrollbar-3d-light-color:,scrollbar-track-color:,table-layout:,text-align:,text-align-last:,text-decoration:,text-indent:,text-justify:,text-overflow:,text-shadow:,text-transform:,text-autospace:,text-kashida-space:,text-underline-position:,top:,unicode-bidi:,-use-link-source:,vertical-align:,visibility:,voice-family:,volume:,white-space:,widows:,width:,word-break:,word-spacing:,word-wrap:,writing-mode:,z-index:,zoom:},  
	morecomment=[s]{<!--}{-->},
	tag=[s]
}
%
%------------------------------------------
% SETUP
%------------------------------------------
\hypersetup{
	pdftitle={\Lecture: Übungsblatt \Sheet},
	pdfauthor={\Name},
	pdfborder={0 0 0}
}
\lstset{%
	% Basic design
	backgroundcolor=\color{editorGray},
	basicstyle={\small\ttfamily},   
	frame=l,
	% Line numbers
	xleftmargin={0.75cm},
	numbers=left,
	stepnumber=1,
	firstnumber=1,
	numberfirstline=true,
	% Code design   
	keywordstyle=\color{blue}\bfseries,
	commentstyle=\color{darkgray}\ttfamily,
	ndkeywordstyle=\color{editorGreen}\bfseries,
	stringstyle=\color{editorOcher},
	% Code
	language=HTML5,
	alsodigit={.:;},
	tabsize=2,
	showtabs=false,
	showspaces=false,
	showstringspaces=false,
	extendedchars=true,
	breaklines=true,        
}
\title{Übungsblatt \Sheet}
\author{\Name}
\setlength{\parindent}{0em}
\topmargin -1.0cm
\oddsidemargin 0cm
\evensidemargin 0cm
\setlength{\textheight}{9.2in}
\setlength{\textwidth}{6.0in}
%
%------------------------------------------
% TITLE
%------------------------------------------
\renewcommand{\maketitle}{
	\thispagestyle{fancy}
	\lhead{\sf \large \Lecture \\ \small \Name}
	\rhead{\sf \large \Semester \\ \small \University}
	\vspace*{0.2cm}
	\begin{center}
	\LARGE \sf \textbf{Übungsblatt \Sheet}
	\end{center}
	\vspace*{0.2cm}
}