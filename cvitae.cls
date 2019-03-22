% CLASS OPTIONS AND REQUIRED PACKAGES
\ProvidesClass{cvitae}[2019/03/21 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}

% Colors
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% FONTS
\usepackage{fontspec}
\setmainfont[
  Color = primary,
  Path = fonts/lato/,
  BoldItalicFont = Lato-RegIta,
  BoldFont = Lato-Reg,
  ItalicFont = Lato-LigIta
] {Lato-Lig}

\setsansfont[
  Scale = MatchLowercase,
  Mapping = tex-text,
  Path = fonts/raleway/
] {Raleway-ExtraLight}

%   Name (heading)
\newcommand{\namesection}[2]{
  \centering{
    \fontsize{25pt}{25pt}
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \selectfont
    #1 % Name
    \\[5pt]
    \color{headings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{11pt}{14pt}
    \selectfont
    #2 % contact and web page
  }
  \makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
  \vspace{-5pt}
}

% section, company, descript, location
\usepackage{titlesec}

% Removes the spacing around the \section
\titlespacing{\section}{0pt}{0pt}{0pt}

% Space between sections
\newcommand{\sectionspace}{\vspace{8pt}}

% Section titles (Profile, Skills, etc).
\titleformat{\section}{
  \color{headings}
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{16pt}{24pt}
  \selectfont
  \raggedright
  \uppercase
} {}{0em}{}

% Company names
\newcommand{\company}[1]{
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{12pt}{12pt}
  \selectfont\uppercase {#1}
  \normalfont
}

% Position/title @ the company (bad name)
\newcommand{\descript}[1]{
  \color{subheadings}
  \raggedright
  \scshape
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{11pt}{13pt}
  \selectfont {#1 \\}
  \normalfont
}

% Dates & companies locations
\newcommand{\location}[1]{
  \color{headings}
  \raggedright
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{10pt}{12pt}
  \selectfont {#1\\}
  \normalfont
}

% itemize with less space
\newenvironment{tightitemize}
  {\vspace{-\topsep}\begin{itemize}\itemsep 1pt \parskip 0pt \parsep 0pt}
  {\end{itemize}\vspace{-\topsep}}
