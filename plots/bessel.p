%!PS-Adobe-2.0
%%Title: bessel.p
%%Creator: gnuplot 5.0 patchlevel 5
%%CreationDate: Wed Jun 28 05:08:46 2017
%%DocumentFonts: (atend)
%%BoundingBox: 50 50 554 770
%%Orientation: Landscape
%%Pages: (atend)
%%EndComments
%%BeginProlog
/gnudict 256 dict def
gnudict begin
%
% The following true/false flags may be edited by hand if desired.
% The unit line width and grayscale image gamma correction may also be changed.
%
/Color false def
/Blacktext false def
/Solid false def
/Dashlength 1 def
/Landscape true def
/Level1 false def
/Level3 false def
/Rounded false def
/ClipToBoundingBox false def
/SuppressPDFMark false def
/TransparentPatterns false def
/gnulinewidth 5.000 def
/userlinewidth gnulinewidth def
/Gamma 1.0 def
/BackgroundColor {-1.000 -1.000 -1.000} def
%
/vshift -46 def
/dl1 {
  10.0 Dashlength userlinewidth gnulinewidth div mul mul mul
  Rounded { currentlinewidth 0.75 mul sub dup 0 le { pop 0.01 } if } if
} def
/dl2 {
  10.0 Dashlength userlinewidth gnulinewidth div mul mul mul
  Rounded { currentlinewidth 0.75 mul add } if
} def
/hpt_ 31.5 def
/vpt_ 31.5 def
/hpt hpt_ def
/vpt vpt_ def
/doclip {
  ClipToBoundingBox {
    newpath 50 50 moveto 554 50 lineto 554 770 lineto 50 770 lineto closepath
    clip
  } if
} def
%
% Gnuplot Prolog Version 5.1 (Oct 2015)
%
%/SuppressPDFMark true def
%
/M {moveto} bind def
/L {lineto} bind def
/R {rmoveto} bind def
/V {rlineto} bind def
/N {newpath moveto} bind def
/Z {closepath} bind def
/C {setrgbcolor} bind def
/f {rlineto fill} bind def
/g {setgray} bind def
/Gshow {show} def   % May be redefined later in the file to support UTF-8
/vpt2 vpt 2 mul def
/hpt2 hpt 2 mul def
/Lshow {currentpoint stroke M 0 vshift R 
	Blacktext {gsave 0 setgray textshow grestore} {textshow} ifelse} def
/Rshow {currentpoint stroke M dup stringwidth pop neg vshift R
	Blacktext {gsave 0 setgray textshow grestore} {textshow} ifelse} def
/Cshow {currentpoint stroke M dup stringwidth pop -2 div vshift R 
	Blacktext {gsave 0 setgray textshow grestore} {textshow} ifelse} def
/UP {dup vpt_ mul /vpt exch def hpt_ mul /hpt exch def
  /hpt2 hpt 2 mul def /vpt2 vpt 2 mul def} def
/DL {Color {setrgbcolor Solid {pop []} if 0 setdash}
 {pop pop pop 0 setgray Solid {pop []} if 0 setdash} ifelse} def
/BL {stroke userlinewidth 2 mul setlinewidth
	Rounded {1 setlinejoin 1 setlinecap} if} def
/AL {stroke userlinewidth 2 div setlinewidth
	Rounded {1 setlinejoin 1 setlinecap} if} def
/UL {dup gnulinewidth mul /userlinewidth exch def
	dup 1 lt {pop 1} if 10 mul /udl exch def} def
/PL {stroke userlinewidth setlinewidth
	Rounded {1 setlinejoin 1 setlinecap} if} def
3.8 setmiterlimit
% Classic Line colors (version 5.0)
/LCw {1 1 1} def
/LCb {0 0 0} def
/LCa {0 0 0} def
/LC0 {1 0 0} def
/LC1 {0 1 0} def
/LC2 {0 0 1} def
/LC3 {1 0 1} def
/LC4 {0 1 1} def
/LC5 {1 1 0} def
/LC6 {0 0 0} def
/LC7 {1 0.3 0} def
/LC8 {0.5 0.5 0.5} def
% Default dash patterns (version 5.0)
/LTB {BL [] LCb DL} def
/LTw {PL [] 1 setgray} def
/LTb {PL [] LCb DL} def
/LTa {AL [1 udl mul 2 udl mul] 0 setdash LCa setrgbcolor} def
/LT0 {PL [] LC0 DL} def
/LT1 {PL [2 dl1 3 dl2] LC1 DL} def
/LT2 {PL [1 dl1 1.5 dl2] LC2 DL} def
/LT3 {PL [6 dl1 2 dl2 1 dl1 2 dl2] LC3 DL} def
/LT4 {PL [1 dl1 2 dl2 6 dl1 2 dl2 1 dl1 2 dl2] LC4 DL} def
/LT5 {PL [4 dl1 2 dl2] LC5 DL} def
/LT6 {PL [1.5 dl1 1.5 dl2 1.5 dl1 1.5 dl2 1.5 dl1 6 dl2] LC6 DL} def
/LT7 {PL [3 dl1 3 dl2 1 dl1 3 dl2] LC7 DL} def
/LT8 {PL [2 dl1 2 dl2 2 dl1 6 dl2] LC8 DL} def
/SL {[] 0 setdash} def
/Pnt {stroke [] 0 setdash gsave 1 setlinecap M 0 0 V stroke grestore} def
/Dia {stroke [] 0 setdash 2 copy vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V closepath stroke
  Pnt} def
/Pls {stroke [] 0 setdash vpt sub M 0 vpt2 V
  currentpoint stroke M
  hpt neg vpt neg R hpt2 0 V stroke
 } def
/Box {stroke [] 0 setdash 2 copy exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V closepath stroke
  Pnt} def
/Crs {stroke [] 0 setdash exch hpt sub exch vpt add M
  hpt2 vpt2 neg V currentpoint stroke M
  hpt2 neg 0 R hpt2 vpt2 V stroke} def
/TriU {stroke [] 0 setdash 2 copy vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V closepath stroke
  Pnt} def
/Star {2 copy Pls Crs} def
/BoxF {stroke [] 0 setdash exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V closepath fill} def
/TriUF {stroke [] 0 setdash vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V closepath fill} def
/TriD {stroke [] 0 setdash 2 copy vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V closepath stroke
  Pnt} def
/TriDF {stroke [] 0 setdash vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V closepath fill} def
/DiaF {stroke [] 0 setdash vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V closepath fill} def
/Pent {stroke [] 0 setdash 2 copy gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  closepath stroke grestore Pnt} def
/PentF {stroke [] 0 setdash gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  closepath fill grestore} def
/Circle {stroke [] 0 setdash 2 copy
  hpt 0 360 arc stroke Pnt} def
/CircleF {stroke [] 0 setdash hpt 0 360 arc fill} def
/C0 {BL [] 0 setdash 2 copy moveto vpt 90 450 arc} bind def
/C1 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 90 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C2 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 90 180 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C3 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 180 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C4 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 180 270 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C5 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 90 arc
	2 copy moveto
	2 copy vpt 180 270 arc closepath fill
	vpt 0 360 arc} bind def
/C6 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 90 270 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C7 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 270 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C8 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 270 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C9 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 270 450 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C10 {BL [] 0 setdash 2 copy 2 copy moveto vpt 270 360 arc closepath fill
	2 copy moveto
	2 copy vpt 90 180 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C11 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 180 arc closepath fill
	2 copy moveto
	2 copy vpt 270 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C12 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 180 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C13 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 0 90 arc closepath fill
	2 copy moveto
	2 copy vpt 180 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/C14 {BL [] 0 setdash 2 copy moveto
	2 copy vpt 90 360 arc closepath fill
	vpt 0 360 arc} bind def
/C15 {BL [] 0 setdash 2 copy vpt 0 360 arc closepath fill
	vpt 0 360 arc closepath} bind def
/Rec {newpath 4 2 roll moveto 1 index 0 rlineto 0 exch rlineto
	neg 0 rlineto closepath} bind def
/Square {dup Rec} bind def
/Bsquare {vpt sub exch vpt sub exch vpt2 Square} bind def
/S0 {BL [] 0 setdash 2 copy moveto 0 vpt rlineto BL Bsquare} bind def
/S1 {BL [] 0 setdash 2 copy vpt Square fill Bsquare} bind def
/S2 {BL [] 0 setdash 2 copy exch vpt sub exch vpt Square fill Bsquare} bind def
/S3 {BL [] 0 setdash 2 copy exch vpt sub exch vpt2 vpt Rec fill Bsquare} bind def
/S4 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt Square fill Bsquare} bind def
/S5 {BL [] 0 setdash 2 copy 2 copy vpt Square fill
	exch vpt sub exch vpt sub vpt Square fill Bsquare} bind def
/S6 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt vpt2 Rec fill Bsquare} bind def
/S7 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt vpt2 Rec fill
	2 copy vpt Square fill Bsquare} bind def
/S8 {BL [] 0 setdash 2 copy vpt sub vpt Square fill Bsquare} bind def
/S9 {BL [] 0 setdash 2 copy vpt sub vpt vpt2 Rec fill Bsquare} bind def
/S10 {BL [] 0 setdash 2 copy vpt sub vpt Square fill 2 copy exch vpt sub exch vpt Square fill
	Bsquare} bind def
/S11 {BL [] 0 setdash 2 copy vpt sub vpt Square fill 2 copy exch vpt sub exch vpt2 vpt Rec fill
	Bsquare} bind def
/S12 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt2 vpt Rec fill Bsquare} bind def
/S13 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt2 vpt Rec fill
	2 copy vpt Square fill Bsquare} bind def
/S14 {BL [] 0 setdash 2 copy exch vpt sub exch vpt sub vpt2 vpt Rec fill
	2 copy exch vpt sub exch vpt Square fill Bsquare} bind def
/S15 {BL [] 0 setdash 2 copy Bsquare fill Bsquare} bind def
/D0 {gsave translate 45 rotate 0 0 S0 stroke grestore} bind def
/D1 {gsave translate 45 rotate 0 0 S1 stroke grestore} bind def
/D2 {gsave translate 45 rotate 0 0 S2 stroke grestore} bind def
/D3 {gsave translate 45 rotate 0 0 S3 stroke grestore} bind def
/D4 {gsave translate 45 rotate 0 0 S4 stroke grestore} bind def
/D5 {gsave translate 45 rotate 0 0 S5 stroke grestore} bind def
/D6 {gsave translate 45 rotate 0 0 S6 stroke grestore} bind def
/D7 {gsave translate 45 rotate 0 0 S7 stroke grestore} bind def
/D8 {gsave translate 45 rotate 0 0 S8 stroke grestore} bind def
/D9 {gsave translate 45 rotate 0 0 S9 stroke grestore} bind def
/D10 {gsave translate 45 rotate 0 0 S10 stroke grestore} bind def
/D11 {gsave translate 45 rotate 0 0 S11 stroke grestore} bind def
/D12 {gsave translate 45 rotate 0 0 S12 stroke grestore} bind def
/D13 {gsave translate 45 rotate 0 0 S13 stroke grestore} bind def
/D14 {gsave translate 45 rotate 0 0 S14 stroke grestore} bind def
/D15 {gsave translate 45 rotate 0 0 S15 stroke grestore} bind def
/DiaE {stroke [] 0 setdash vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V closepath stroke} def
/BoxE {stroke [] 0 setdash exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V closepath stroke} def
/TriUE {stroke [] 0 setdash vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V closepath stroke} def
/TriDE {stroke [] 0 setdash vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V closepath stroke} def
/PentE {stroke [] 0 setdash gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  closepath stroke grestore} def
/CircE {stroke [] 0 setdash 
  hpt 0 360 arc stroke} def
/Opaque {gsave closepath 1 setgray fill grestore 0 setgray closepath} def
/DiaW {stroke [] 0 setdash vpt add M
  hpt neg vpt neg V hpt vpt neg V
  hpt vpt V hpt neg vpt V Opaque stroke} def
/BoxW {stroke [] 0 setdash exch hpt sub exch vpt add M
  0 vpt2 neg V hpt2 0 V 0 vpt2 V
  hpt2 neg 0 V Opaque stroke} def
/TriUW {stroke [] 0 setdash vpt 1.12 mul add M
  hpt neg vpt -1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt 1.62 mul V Opaque stroke} def
/TriDW {stroke [] 0 setdash vpt 1.12 mul sub M
  hpt neg vpt 1.62 mul V
  hpt 2 mul 0 V
  hpt neg vpt -1.62 mul V Opaque stroke} def
/PentW {stroke [] 0 setdash gsave
  translate 0 hpt M 4 {72 rotate 0 hpt L} repeat
  Opaque stroke grestore} def
/CircW {stroke [] 0 setdash 
  hpt 0 360 arc Opaque stroke} def
/BoxFill {gsave Rec 1 setgray fill grestore} def
/Density {
  /Fillden exch def
  currentrgbcolor
  /ColB exch def /ColG exch def /ColR exch def
  /ColR ColR Fillden mul Fillden sub 1 add def
  /ColG ColG Fillden mul Fillden sub 1 add def
  /ColB ColB Fillden mul Fillden sub 1 add def
  ColR ColG ColB setrgbcolor} def
/BoxColFill {gsave Rec PolyFill} def
/PolyFill {gsave Density fill grestore grestore} def
/h {rlineto rlineto rlineto gsave closepath fill grestore} bind def
%
% PostScript Level 1 Pattern Fill routine for rectangles
% Usage: x y w h s a XX PatternFill
%	x,y = lower left corner of box to be filled
%	w,h = width and height of box
%	  a = angle in degrees between lines and x-axis
%	 XX = 0/1 for no/yes cross-hatch
%
/PatternFill {gsave /PFa [ 9 2 roll ] def
  PFa 0 get PFa 2 get 2 div add PFa 1 get PFa 3 get 2 div add translate
  PFa 2 get -2 div PFa 3 get -2 div PFa 2 get PFa 3 get Rec
  TransparentPatterns {} {gsave 1 setgray fill grestore} ifelse
  clip
  currentlinewidth 0.5 mul setlinewidth
  /PFs PFa 2 get dup mul PFa 3 get dup mul add sqrt def
  0 0 M PFa 5 get rotate PFs -2 div dup translate
  0 1 PFs PFa 4 get div 1 add floor cvi
	{PFa 4 get mul 0 M 0 PFs V} for
  0 PFa 6 get ne {
	0 1 PFs PFa 4 get div 1 add floor cvi
	{PFa 4 get mul 0 2 1 roll M PFs 0 V} for
 } if
  stroke grestore} def
%
/languagelevel where
 {pop languagelevel} {1} ifelse
dup 2 lt
	{/InterpretLevel1 true def
	 /InterpretLevel3 false def}
	{/InterpretLevel1 Level1 def
	 2 gt
	    {/InterpretLevel3 Level3 def}
	    {/InterpretLevel3 false def}
	 ifelse }
 ifelse
%
% PostScript level 2 pattern fill definitions
%
/Level2PatternFill {
/Tile8x8 {/PaintType 2 /PatternType 1 /TilingType 1 /BBox [0 0 8 8] /XStep 8 /YStep 8}
	bind def
/KeepColor {currentrgbcolor [/Pattern /DeviceRGB] setcolorspace} bind def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 0 M 8 8 L 0 8 M 8 0 L stroke} 
>> matrix makepattern
/Pat1 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 0 M 8 8 L 0 8 M 8 0 L stroke
	0 4 M 4 8 L 8 4 L 4 0 L 0 4 L stroke}
>> matrix makepattern
/Pat2 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 0 M 0 8 L
	8 8 L 8 0 L 0 0 L fill}
>> matrix makepattern
/Pat3 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -4 8 M 8 -4 L
	0 12 M 12 0 L stroke}
>> matrix makepattern
/Pat4 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -4 0 M 8 12 L
	0 -4 M 12 8 L stroke}
>> matrix makepattern
/Pat5 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -2 8 M 4 -4 L
	0 12 M 8 -4 L 4 12 M 10 0 L stroke}
>> matrix makepattern
/Pat6 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop -2 0 M 4 12 L
	0 -4 M 8 12 L 4 -4 M 10 8 L stroke}
>> matrix makepattern
/Pat7 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 8 -2 M -4 4 L
	12 0 M -4 8 L 12 4 M 0 10 L stroke}
>> matrix makepattern
/Pat8 exch def
<< Tile8x8
 /PaintProc {0.5 setlinewidth pop 0 -2 M 12 4 L
	-4 0 M 12 8 L -4 4 M 8 10 L stroke}
>> matrix makepattern
/Pat9 exch def
/Pattern1 {PatternBgnd KeepColor Pat1 setpattern} bind def
/Pattern2 {PatternBgnd KeepColor Pat2 setpattern} bind def
/Pattern3 {PatternBgnd KeepColor Pat3 setpattern} bind def
/Pattern4 {PatternBgnd KeepColor Landscape {Pat5} {Pat4} ifelse setpattern} bind def
/Pattern5 {PatternBgnd KeepColor Landscape {Pat4} {Pat5} ifelse setpattern} bind def
/Pattern6 {PatternBgnd KeepColor Landscape {Pat9} {Pat6} ifelse setpattern} bind def
/Pattern7 {PatternBgnd KeepColor Landscape {Pat8} {Pat7} ifelse setpattern} bind def
} def
%
%
%End of PostScript Level 2 code
%
/PatternBgnd {
  TransparentPatterns {} {gsave 1 setgray fill grestore} ifelse
} def
%
% Substitute for Level 2 pattern fill codes with
% grayscale if Level 2 support is not selected.
%
/Level1PatternFill {
/Pattern1 {0.250 Density} bind def
/Pattern2 {0.500 Density} bind def
/Pattern3 {0.750 Density} bind def
/Pattern4 {0.125 Density} bind def
/Pattern5 {0.375 Density} bind def
/Pattern6 {0.625 Density} bind def
/Pattern7 {0.875 Density} bind def
} def
%
% Now test for support of Level 2 code
%
Level1 {Level1PatternFill} {Level2PatternFill} ifelse
%
/Symbol-Oblique /Symbol findfont [1 0 .167 1 0 0] makefont
dup length dict begin {1 index /FID eq {pop pop} {def} ifelse} forall
currentdict end definefont pop
%
/MFshow {
   { dup 5 get 3 ge
     { 5 get 3 eq {gsave} {grestore} ifelse }
     {dup dup 0 get findfont exch 1 get scalefont setfont
     [ currentpoint ] exch dup 2 get 0 exch R dup 5 get 2 ne {dup dup 6
     get exch 4 get {textshow} {stringwidth pop 0 R} ifelse }if dup 5 get 0 eq
     {dup 3 get {2 get neg 0 exch R pop} {pop aload pop M} ifelse} {dup 5
     get 1 eq {dup 2 get exch dup 3 get exch 6 get stringwidth pop -2 div
     dup 0 R} {dup 6 get stringwidth pop -2 div 0 R 6 get
     textshow 2 index {aload pop M neg 3 -1 roll neg R pop pop} {pop pop pop
     pop aload pop M} ifelse }ifelse }ifelse }
     ifelse }
   forall} def
/Gswidth {dup type /stringtype eq {stringwidth} {pop (n) stringwidth} ifelse} def
/MFwidth {0 exch { dup 5 get 3 ge { 5 get 3 eq { 0 } { pop } ifelse }
 {dup 3 get{dup dup 0 get findfont exch 1 get scalefont setfont
     6 get Gswidth pop add} {pop} ifelse} ifelse} forall} def
/MLshow { currentpoint stroke M
  0 exch R
  Blacktext {gsave 0 setgray MFshow grestore} {MFshow} ifelse } bind def
/MRshow { currentpoint stroke M
  exch dup MFwidth neg 3 -1 roll R
  Blacktext {gsave 0 setgray MFshow grestore} {MFshow} ifelse } bind def
/MCshow { currentpoint stroke M
  exch dup MFwidth -2 div 3 -1 roll R
  Blacktext {gsave 0 setgray MFshow grestore} {MFshow} ifelse } bind def
/XYsave    { [( ) 1 2 true false 3 ()] } bind def
/XYrestore { [( ) 1 2 true false 4 ()] } bind def
Level1 SuppressPDFMark or 
{} {
/SDict 10 dict def
systemdict /pdfmark known not {
  userdict /pdfmark systemdict /cleartomark get put
} if
SDict begin [
  /Title (bessel.p)
  /Subject (gnuplot plot)
  /Creator (gnuplot 5.0 patchlevel 5)
  /Author (mscf25_gauransh_24222762058)
%  /Producer (gnuplot)
%  /Keywords ()
  /CreationDate (Wed Jun 28 05:08:46 2017)
  /DOCINFO pdfmark
end
} ifelse
%
% Support for boxed text - Ethan A Merritt May 2005
%
/InitTextBox { userdict /TBy2 3 -1 roll put userdict /TBx2 3 -1 roll put
           userdict /TBy1 3 -1 roll put userdict /TBx1 3 -1 roll put
	   /Boxing true def } def
/ExtendTextBox { Boxing
    { gsave dup false charpath pathbbox
      dup TBy2 gt {userdict /TBy2 3 -1 roll put} {pop} ifelse
      dup TBx2 gt {userdict /TBx2 3 -1 roll put} {pop} ifelse
      dup TBy1 lt {userdict /TBy1 3 -1 roll put} {pop} ifelse
      dup TBx1 lt {userdict /TBx1 3 -1 roll put} {pop} ifelse
      grestore } if } def
/PopTextBox { newpath TBx1 TBxmargin sub TBy1 TBymargin sub M
               TBx1 TBxmargin sub TBy2 TBymargin add L
	       TBx2 TBxmargin add TBy2 TBymargin add L
	       TBx2 TBxmargin add TBy1 TBymargin sub L closepath } def
/DrawTextBox { PopTextBox stroke /Boxing false def} def
/FillTextBox { gsave PopTextBox 1 1 1 setrgbcolor fill grestore /Boxing false def} def
0 0 0 0 InitTextBox
/TBxmargin 20 def
/TBymargin 20 def
/Boxing false def
/textshow { ExtendTextBox Gshow } def
%
% redundant definitions for compatibility with prologue.ps older than 5.0.2
/LTB {BL [] LCb DL} def
/LTb {PL [] LCb DL} def
end
%%EndProlog
%%Page: 1 1
gnudict begin
gsave
doclip
50 50 translate
0.100 0.100 scale
90 rotate
0 -5040 translate
0 setgray
newpath
(Helvetica) findfont 140 scalefont setfont
BackgroundColor 0 lt 3 1 roll 0 lt exch 0 lt or or not {gsave BackgroundColor C clippath fill grestore} if
/Helvetica findfont 140 scalefont setfont
/vshift -46 def
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 280 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 280 M
63 0 V
6338 0 R
-63 0 V
stroke
462 280 M
[ [(Helvetica) 140.0 0.0 true true 0 (-0.4)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 936 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 936 M
63 0 V
6338 0 R
-63 0 V
stroke
462 936 M
[ [(Helvetica) 140.0 0.0 true true 0 (-0.2)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 1592 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 1592 M
63 0 V
6338 0 R
-63 0 V
stroke
462 1592 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 2248 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 2248 M
63 0 V
6338 0 R
-63 0 V
stroke
462 2248 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0.2)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 2903 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 2903 M
63 0 V
6338 0 R
-63 0 V
stroke
462 2903 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0.4)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 3559 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 3559 M
63 0 V
6338 0 R
-63 0 V
stroke
462 3559 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0.6)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 4215 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 4215 M
63 0 V
6338 0 R
-63 0 V
stroke
462 4215 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0.8)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 4871 M
6401 0 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 4871 M
63 0 V
6338 0 R
-63 0 V
stroke
462 4871 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 1)]
] -46.7 MRshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
546 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
546 280 M
0 63 V
0 4528 R
0 -63 V
stroke
546 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
1186 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
1186 280 M
0 63 V
0 4528 R
0 -63 V
stroke
1186 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 0.5)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
1826 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
1826 280 M
0 63 V
0 4528 R
0 -63 V
stroke
1826 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 1)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
2466 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
2466 280 M
0 63 V
0 4528 R
0 -63 V
stroke
2466 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 1.5)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
3106 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
3106 280 M
0 63 V
0 4528 R
0 -63 V
stroke
3106 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 2)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
3747 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
3747 280 M
0 63 V
0 4528 R
0 -63 V
stroke
3747 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 2.5)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
4387 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
4387 280 M
0 63 V
0 4528 R
0 -63 V
stroke
4387 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 3)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
5027 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
5027 280 M
0 63 V
0 4528 R
0 -63 V
stroke
5027 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 3.5)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
5667 280 M
0 4388 V
0 140 R
0 63 V
stroke
1.000 UL
LTb
LCb setrgbcolor
5667 280 M
0 63 V
0 4528 R
0 -63 V
stroke
5667 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 4)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
6307 280 M
0 4388 V
0 140 R
0 63 V
stroke
1.000 UL
LTb
LCb setrgbcolor
6307 280 M
0 63 V
0 4528 R
0 -63 V
stroke
6307 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 4.5)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
0.500 UL
LTa
LCa setrgbcolor
6947 280 M
0 4591 V
stroke
1.000 UL
LTb
LCb setrgbcolor
6947 280 M
0 63 V
0 4528 R
0 -63 V
stroke
6947 140 M
[ [(Helvetica) 140.0 0.0 true true 0 ( 5)]
] -46.7 MCshow
1.000 UL
LTb
LCb setrgbcolor
1.000 UL
LTB
LCb setrgbcolor
546 4871 N
546 280 L
6401 0 V
0 4591 V
-6401 0 V
Z stroke
1.000 UP
1.000 UL
LTb
LCb setrgbcolor
% Begin plot #1
1.000 UP
1.000 UL
LTb
LCb setrgbcolor
/Helvetica findfont 140 scalefont setfont
LCb setrgbcolor
6296 4738 M
("bessel.txt") Rshow
1.000 UP
1.000 UL
LTb
LCb setrgbcolor
559 4871 Pls
572 4871 Pls
584 4871 Pls
597 4870 Pls
610 4870 Pls
623 4869 Pls
636 4868 Pls
648 4868 Pls
661 4867 Pls
674 4866 Pls
687 4864 Pls
700 4863 Pls
712 4862 Pls
725 4860 Pls
738 4859 Pls
751 4857 Pls
764 4855 Pls
776 4853 Pls
789 4851 Pls
802 4849 Pls
815 4847 Pls
828 4845 Pls
840 4842 Pls
853 4840 Pls
866 4837 Pls
879 4834 Pls
892 4831 Pls
904 4828 Pls
917 4825 Pls
930 4822 Pls
943 4819 Pls
956 4815 Pls
968 4812 Pls
981 4808 Pls
994 4804 Pls
1007 4801 Pls
1020 4797 Pls
1032 4793 Pls
1045 4788 Pls
1058 4784 Pls
1071 4780 Pls
1084 4775 Pls
1096 4771 Pls
1109 4766 Pls
1122 4761 Pls
1135 4757 Pls
1148 4752 Pls
1160 4747 Pls
1173 4741 Pls
1186 4736 Pls
1199 4731 Pls
1212 4725 Pls
1225 4720 Pls
1237 4714 Pls
1250 4708 Pls
1263 4702 Pls
1276 4696 Pls
1289 4690 Pls
1301 4684 Pls
1314 4678 Pls
1327 4671 Pls
1340 4665 Pls
1353 4658 Pls
1365 4652 Pls
1378 4645 Pls
1391 4638 Pls
1404 4631 Pls
1417 4624 Pls
1429 4617 Pls
1442 4610 Pls
1455 4602 Pls
1468 4595 Pls
1481 4587 Pls
1493 4580 Pls
1506 4572 Pls
1519 4564 Pls
1532 4556 Pls
1545 4548 Pls
1557 4540 Pls
1570 4532 Pls
1583 4524 Pls
1596 4516 Pls
1609 4507 Pls
1621 4499 Pls
1634 4490 Pls
1647 4481 Pls
1660 4473 Pls
1673 4464 Pls
1685 4455 Pls
1698 4446 Pls
1711 4437 Pls
1724 4428 Pls
1737 4418 Pls
1749 4409 Pls
1762 4400 Pls
1775 4390 Pls
1788 4380 Pls
1801 4371 Pls
1813 4361 Pls
1826 4351 Pls
1839 4341 Pls
1852 4331 Pls
1865 4321 Pls
1877 4311 Pls
1890 4301 Pls
1903 4290 Pls
1916 4280 Pls
1929 4270 Pls
1941 4259 Pls
1954 4249 Pls
1967 4238 Pls
1980 4227 Pls
1993 4216 Pls
2005 4205 Pls
2018 4195 Pls
2031 4183 Pls
2044 4172 Pls
2057 4161 Pls
2069 4150 Pls
2082 4139 Pls
2095 4127 Pls
2108 4116 Pls
2121 4104 Pls
2133 4093 Pls
2146 4081 Pls
2159 4070 Pls
2172 4058 Pls
2185 4046 Pls
2197 4034 Pls
2210 4022 Pls
2223 4010 Pls
2236 3998 Pls
2249 3986 Pls
2261 3974 Pls
2274 3962 Pls
2287 3950 Pls
2300 3937 Pls
2313 3925 Pls
2325 3912 Pls
2338 3900 Pls
2351 3887 Pls
2364 3875 Pls
2377 3862 Pls
2389 3850 Pls
2402 3837 Pls
2415 3824 Pls
2428 3811 Pls
2441 3798 Pls
2453 3785 Pls
2466 3772 Pls
2479 3759 Pls
2492 3746 Pls
2505 3733 Pls
2518 3720 Pls
2530 3707 Pls
2543 3694 Pls
2556 3680 Pls
2569 3667 Pls
2582 3654 Pls
2594 3640 Pls
2607 3627 Pls
2620 3614 Pls
2633 3600 Pls
2646 3586 Pls
2658 3573 Pls
2671 3559 Pls
2684 3546 Pls
2697 3532 Pls
2710 3518 Pls
2722 3505 Pls
2735 3491 Pls
2748 3477 Pls
2761 3463 Pls
2774 3449 Pls
2786 3436 Pls
2799 3422 Pls
2812 3408 Pls
2825 3394 Pls
2838 3380 Pls
2850 3366 Pls
2863 3352 Pls
2876 3338 Pls
2889 3324 Pls
2902 3310 Pls
2914 3296 Pls
2927 3282 Pls
2940 3267 Pls
2953 3253 Pls
2966 3239 Pls
2978 3225 Pls
2991 3211 Pls
3004 3197 Pls
3017 3182 Pls
3030 3168 Pls
3042 3154 Pls
3055 3140 Pls
3068 3125 Pls
3081 3111 Pls
3094 3097 Pls
3106 3083 Pls
3119 3068 Pls
3132 3054 Pls
3145 3040 Pls
3158 3025 Pls
3170 3011 Pls
3183 2997 Pls
3196 2983 Pls
3209 2968 Pls
3222 2954 Pls
3234 2940 Pls
3247 2925 Pls
3260 2911 Pls
3273 2897 Pls
3286 2882 Pls
3298 2868 Pls
3311 2854 Pls
3324 2840 Pls
3337 2825 Pls
3350 2811 Pls
3362 2797 Pls
3375 2783 Pls
3388 2768 Pls
3401 2754 Pls
3414 2740 Pls
3426 2726 Pls
3439 2712 Pls
3452 2697 Pls
3465 2683 Pls
3478 2669 Pls
3490 2655 Pls
3503 2641 Pls
3516 2627 Pls
3529 2613 Pls
3542 2599 Pls
3554 2585 Pls
3567 2571 Pls
3580 2557 Pls
3593 2543 Pls
3606 2529 Pls
3618 2515 Pls
3631 2501 Pls
3644 2487 Pls
3657 2473 Pls
3670 2459 Pls
3682 2445 Pls
3695 2432 Pls
3708 2418 Pls
3721 2404 Pls
3734 2390 Pls
3746 2377 Pls
3759 2363 Pls
3772 2350 Pls
3785 2336 Pls
3798 2322 Pls
3811 2309 Pls
3823 2295 Pls
3836 2282 Pls
3849 2269 Pls
3862 2255 Pls
3875 2242 Pls
3887 2229 Pls
3900 2215 Pls
3913 2202 Pls
3926 2189 Pls
3939 2176 Pls
3951 2163 Pls
3964 2150 Pls
3977 2137 Pls
3990 2124 Pls
4003 2111 Pls
4015 2098 Pls
4028 2085 Pls
4041 2072 Pls
4054 2060 Pls
4067 2047 Pls
4079 2034 Pls
4092 2022 Pls
4105 2009 Pls
4118 1997 Pls
4131 1984 Pls
4143 1972 Pls
4156 1959 Pls
4169 1947 Pls
4182 1935 Pls
4195 1922 Pls
4207 1910 Pls
4220 1898 Pls
4233 1886 Pls
4246 1874 Pls
4259 1862 Pls
4271 1850 Pls
4284 1839 Pls
4297 1827 Pls
4310 1815 Pls
4323 1803 Pls
4335 1792 Pls
4348 1780 Pls
4361 1769 Pls
4374 1757 Pls
4387 1746 Pls
4399 1735 Pls
4412 1723 Pls
4425 1712 Pls
4438 1701 Pls
4451 1690 Pls
4463 1679 Pls
4476 1668 Pls
4489 1657 Pls
4502 1646 Pls
4515 1636 Pls
4527 1625 Pls
4540 1614 Pls
4553 1604 Pls
4566 1593 Pls
4579 1583 Pls
4591 1573 Pls
4604 1562 Pls
4617 1552 Pls
4630 1542 Pls
4643 1532 Pls
4655 1522 Pls
4668 1512 Pls
4681 1502 Pls
4694 1492 Pls
4707 1483 Pls
4719 1473 Pls
4732 1463 Pls
4745 1454 Pls
4758 1444 Pls
4771 1435 Pls
4783 1426 Pls
4796 1416 Pls
4809 1407 Pls
4822 1398 Pls
4835 1389 Pls
4847 1380 Pls
4860 1371 Pls
4873 1363 Pls
4886 1354 Pls
4899 1345 Pls
4911 1337 Pls
4924 1328 Pls
4937 1320 Pls
4950 1311 Pls
4963 1303 Pls
4975 1295 Pls
4988 1287 Pls
5001 1279 Pls
5014 1271 Pls
5027 1263 Pls
5039 1255 Pls
5052 1248 Pls
5065 1240 Pls
5078 1232 Pls
5091 1225 Pls
5104 1217 Pls
5116 1210 Pls
5129 1203 Pls
5142 1196 Pls
5155 1189 Pls
5168 1182 Pls
5180 1175 Pls
5193 1168 Pls
5206 1161 Pls
5219 1154 Pls
5232 1148 Pls
5244 1141 Pls
5257 1135 Pls
5270 1128 Pls
5283 1122 Pls
5296 1116 Pls
5308 1110 Pls
5321 1104 Pls
5334 1098 Pls
5347 1092 Pls
5360 1086 Pls
5372 1080 Pls
5385 1075 Pls
5398 1069 Pls
5411 1064 Pls
5424 1058 Pls
5436 1053 Pls
5449 1048 Pls
5462 1043 Pls
5475 1038 Pls
5488 1033 Pls
5500 1028 Pls
5513 1023 Pls
5526 1018 Pls
5539 1013 Pls
5552 1009 Pls
5564 1004 Pls
5577 1000 Pls
5590 996 Pls
5603 991 Pls
5616 987 Pls
5628 983 Pls
5641 979 Pls
5654 975 Pls
5667 971 Pls
5680 968 Pls
5692 964 Pls
5705 960 Pls
5718 957 Pls
5731 953 Pls
5744 950 Pls
5756 947 Pls
5769 943 Pls
5782 940 Pls
5795 937 Pls
5808 934 Pls
5820 931 Pls
5833 929 Pls
5846 926 Pls
5859 923 Pls
5872 921 Pls
5884 918 Pls
5897 916 Pls
5910 913 Pls
5923 911 Pls
5936 909 Pls
5948 907 Pls
5961 905 Pls
5974 903 Pls
5987 901 Pls
6000 899 Pls
6012 898 Pls
6025 896 Pls
6038 894 Pls
6051 893 Pls
6064 892 Pls
6076 890 Pls
6089 889 Pls
6102 888 Pls
6115 887 Pls
6128 886 Pls
6140 885 Pls
6153 884 Pls
6166 883 Pls
6179 882 Pls
6192 882 Pls
6204 881 Pls
6217 881 Pls
6230 880 Pls
6243 880 Pls
6256 880 Pls
6269 880 Pls
6281 879 Pls
6294 879 Pls
6307 879 Pls
6320 879 Pls
6333 880 Pls
6345 880 Pls
6358 880 Pls
6371 880 Pls
6384 881 Pls
6397 881 Pls
6409 882 Pls
6422 883 Pls
6435 883 Pls
6448 884 Pls
6461 885 Pls
6473 886 Pls
6486 887 Pls
6499 888 Pls
6512 889 Pls
6525 890 Pls
6537 891 Pls
6550 893 Pls
6563 894 Pls
6576 895 Pls
6589 897 Pls
6601 899 Pls
6614 900 Pls
6627 902 Pls
6640 904 Pls
6653 905 Pls
6665 907 Pls
6678 909 Pls
6691 911 Pls
6704 913 Pls
6717 915 Pls
6729 917 Pls
6742 920 Pls
6755 922 Pls
6768 924 Pls
6781 927 Pls
6793 929 Pls
6806 932 Pls
6819 934 Pls
6832 937 Pls
6845 940 Pls
6857 942 Pls
6870 945 Pls
6883 948 Pls
6896 951 Pls
6909 954 Pls
6921 957 Pls
6934 960 Pls
6579 4738 Pls
% End plot #1
2.000 UL
LTb
LCb setrgbcolor
1.000 UL
LTB
LCb setrgbcolor
546 4871 N
546 280 L
6401 0 V
0 4591 V
-6401 0 V
Z stroke
1.000 UP
1.000 UL
LTb
LCb setrgbcolor
stroke
grestore
end
showpage
%%Trailer
%%DocumentFonts: Helvetica
%%Pages: 1
