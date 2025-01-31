\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SCreport}[2015/06/19 Report class for WCPFC Scientific Committee]
\LoadClass[12pt]{article}

% Load standard set of packages
\RequirePackage{amssymb, amsmath}
\RequirePackage{booktabs}
\RequirePackage{etoolbox}
\RequirePackage[utf8]{inputenc}
\RequirePackage{caption}
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fullpage}
\RequirePackage[margin=1in]{geometry} % customize margins 
\RequirePackage{comment}
\RequirePackage{soul}
\RequirePackage{pdflscape}
\RequirePackage{natbib}
\RequirePackage{url}
\RequirePackage{xspace}
\RequirePackage{soul}
\RequirePackage{parskip}
\RequirePackage{grffile} % allows ~, . ,etc. into figure file names
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage{setspace}
\RequirePackage{hyperref}
%%%%%%%%%%%%%%%%%%%%%%%%%
% Defining format for hyperlinks 
\hypersetup{colorlinks, 
linkcolor= PineGreen, 
filecolor= TealBlue, 
urlcolor= PineGreen,
citecolor= NavyBlue}
%%%%%%%%%%%%%%%%%%%%%%%%%

%\bibliography{//penguin/assessments/latex-utils/ofp-sam-biblio.bib}

% Define custom commands
\newcommand{\LnS}{\mathrm {log} \hspace{0.4mm}}
\newcommand{\spc}{Oceanic Fisheries Programme, Secretariat of the Pacific Community}
%% more shortcuts: versus, via, degrees, right arrow
\newcommand{\degree}{$^{\circ}$}
\newcommand{\ra}{$\rightarrow{\;}$}
\newcommand{\vs}{\emph{vs.}\xspace}
\newcommand{\via}{\emph{via}\xspace}

%%%% assessments shortcuts
\newcommand{\sbo}{$\mbox{\emph{SB}}_{0}$\xspace}
\newcommand{\sbfo}{$\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbsbmsy}{$\mbox{\emph{SB}}_{latest}/\mbox{\emph{SB}}_{MSY}$\xspace}
\newcommand{\sbl}{$\mbox{\emph{SB}}_{latest}$\xspace}
\newcommand{\sbc}{$\mbox{\emph{SB}}_{current}$\xspace}

\newcommand{\sbmsy}{$\mbox{\emph{SB}}_{\mbox{\scriptsize{MSY}}}$\xspace}
\newcommand{\fmsy}{$F_{\mbox{\scriptsize{MSY}}}$\xspace}
\newcommand{\sbsbfo}{$\mbox{\emph{SB}}_{latest}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\fref}{$F_{current}/F_{MSY}$\xspace}
\newcommand{\msy}{$\mbox{\emph{MSY}}$\xspace}
\newcommand{\lrp}{$20\%\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\SPALB}{south Pacific albacore\xspace}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% highlighting commands for text editing
\def\hldefaultcol{Khaki}
\sethlcolor{\hldefaultcol}

\newcommand{\done}[1]{\st{#1}} % strikes text
\newcommand{\hllb}[1]{\sethlcolor{PaleTurquoise} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlam}[1]{\sethlcolor{Aquamarine} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlcyan}[1]{\sethlcolor{Cyan} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlyel}[1]{\sethlcolor{Gold} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlred}[1]{\sethlcolor{OrangeRed} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlgreen}[1]{\sethlcolor{YellowGreen} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlcoral}[1]{\sethlcolor{Coral} \hl{#1} \sethlcolor{\hldefaultcol}}


% normal figure, centred in page
\newcommand{\capnow}{}
\newcommand{\addcenterfig}[3][Caption to be completed]{
  \begin{figure}[!ht]
    \begin{center}
      \includegraphics[width=\textwidth]{#3}
     \caption{#1 \label{#2}}
    \end{center}
  \end{figure}
}

% landscape figure
\newcommand{\addcenterfigLS}[3][Caption to be completed]{
 \newgeometry{left=0.5cm,bottom=2.5cm,right=1cm,top=2.5cm}

\begin{landscape}
   \vspace*{\fill}

\begin{figure}[!ht]
    \begin{center}
      \includegraphics[width=620pt]{#3}
     \caption{#1 \label{#2}}
    \end{center}

  \end{figure}
  \vspace*{\fill}

\clearpage
\end{landscape}
\restoregeometry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% WCPFC title page %%%%%%%%%%%%%%%%%%%%% 
%% Commands for users to define title page settings
\newcommand{\spcauthor}{Use \textbackslash reportauthor to defined report authors}
\newcommand{\reportauthor}[1]{\renewcommand{\spcauthor}{#1}}

\newcommand{\spctitle}{Use \textbackslash reporttitle to defined report authors}
\newcommand{\reporttitle}[1]{\renewcommand{\spctitle}{#1}}

\newcommand{\repnumbr}{Use \textbackslash reportnumber to defined report number}
\newcommand{\reportnumber}[1]{\renewcommand{\repnumbr}{#1}}

%% define title page macro 
\newcommand{\wcpfctitlepage}{

\thispagestyle{empty}
\begin{center}
\begin{figure}
\begin{center}
%\includegraphics[scale=0.6]{//penguin/assessments/latex-utils/WCPFC-logo.jpg}
\includegraphics[scale=0.6]{C:/Projects/SHK-indicators-2015/WRITEUP/WCPFC-logo.jpg}

\end{center}
\end{figure}
\textbf{SCIENTIFIC COMMITTEE\\ELEVENTH REGULAR SESSION\\}
Pohnpei, Federated States of Micronesia\\
5--13 August 2015\\

\vspace{0.5in}
\rule{\textwidth}{0.5mm}
%\vspace{-0.25cm}
\bfseries{\spctitle} % report title inserted here
\rule{\textwidth}{0.5mm}
\end{center}

\begin{flushright}
\textbf{WCPFC-SC11-2015/\repnumbr} % report number
\end{flushright}
\vspace{1in}

\begin{center} % report authors
\textbf{\spcauthor }
%\textbf{\spcauthor \footnote{\label{spc-ref}Oceanic Fisheries Programme, Secretariat of the Pacific Community}}
\end{center}

\clearpage}

