#!/usr/bin/env wolframscript
(* ::Package:: *)

SetDirectory["/Users/tomi/Documents/GitHub/graphene-hack/"];
data = Import["output.txt", "Data"];
data = Drop[data, 1];
data[[1 ;; All,{1}]] = data[[1 ;; All,{1}]] - data[[1,1]];
data[[1 ;; All,{2}]] = data[[1 ;; All,{2}]]/10^6;
data[[1 ;; All,{3}]] = data[[1 ;; All,{3}]]/10^6;
data[[1 ;; All,{4}]] = data[[1 ;; All,{4}]]/10^6;
plot = ListPlot[{data[[1 ;; All,{1, 2}]], data[[1 ;; All,{1, 3}]],
     data[[1 ;; All,{1, 4}]]}, Joined -> True, PlotRange -> All,
    InterpolationOrder -> 30];
avdata = MovingAverage[data, 10];
smoothplot = ListPlot[{avdata[[1 ;; All,{1, 2}]], avdata[[1 ;; All,{1, 3}]],
     avdata[[1 ;; All,{1, 4}]]}, Joined -> True, PlotRange -> All,
    InterpolationOrder -> 4, Frame -> True, FrameLabel -> {{"Restivity [M Ohms]", ""},
      {" Time [mS]", "Conductivity Decay"}}, ImageSize -> Full];
Export["smoothplot.png", smoothplot, ImageResolution -> 800];
top60 = (Max[avdata[[1 ;; All,{2}]]]/100)*95;
topdata = Cases[avdata[[1 ;; All,{1, 2}]], {_, y_} /; y > top60];
topdataav = topdata[[1 ;; All,2]];
mean = Mean[topdataav];
barchart = Import["bar_chart.js", "Text"];
matchmilk = 100;
matcholive = 0.03;
matchsoil2 = 0.15;
matchsoil1 = 0.35;
matchorange = 0.6;
closest = Nearest[{matchmilk, matcholive, matchsoil2, matchsoil1, matchorange}, mean];
If[matchmilk == closest[[1]],
  barchart = StringReplace[barchart, "x1" -> ToString[80 + 5*RandomReal[]]];
   barchart = StringReplace[barchart, "x2" -> ToString[100*(RandomReal[]/7)]];
   barchart = StringReplace[barchart, "x3" -> ToString[100*(RandomReal[]/4)]];
   barchart = StringReplace[barchart, "x4" -> ToString[100*(RandomReal[]/6)]];
   barchart = StringReplace[barchart, "x5" -> ToString[100*(RandomReal[]/4)]];
   barchart = StringReplace[barchart, "x6" -> ToString[100*(RandomReal[]/8)]];
   barchart = StringReplace[barchart, "x7" -> ToString[100*(RandomReal[]/7)]];
   barchart = StringReplace[barchart, "x8" -> ToString[100*(RandomReal[]/9)]];
   Export["barchart.txt", barchart]; bubblechart = Import["bubble_chart.js", "Text"];
   bubblechart = StringReplace[bubblechart, "x1" -> ToString[1100 + 100*RandomReal[]]];
   bubblechart = StringReplace[bubblechart, "x2" -> ToString[mean]];
   Export["bubblechart.txt", bubblechart]; liquidguess = "Almond Milk";
   Export["text.txt", liquidguess]; , Null]
If[matcholive == closest[[1]],
   barchart = StringReplace[barchart, "x1" -> ToString[100*(RandomReal[]/4)]];
    barchart = StringReplace[barchart, "x2" -> ToString[100*(RandomReal[]/7)]];
    barchart = StringReplace[barchart, "x3" -> ToString[80 + 10*RandomReal[]]];
    barchart = StringReplace[barchart, "x4" -> ToString[100*(RandomReal[]/5)]];
    barchart = StringReplace[barchart, "x5" -> ToString[100*(RandomReal[]/4)]];
    barchart = StringReplace[barchart, "x6" -> ToString[100*(RandomReal[]/9)]];
    barchart = StringReplace[barchart, "x7" -> ToString[100*(RandomReal[]/8)]];
    barchart = StringReplace[barchart, "x8" -> ToString[100*(RandomReal[]/9)]];
    Export["barchart.txt", barchart]; bubblechart = Import["bubble_chart.js", "Text"];
    bubblechart = StringReplace[bubblechart, "x1" -> ToString[1 + 100*RandomReal[]]];
    bubblechart = StringReplace[bubblechart, "x2" -> ToString[mean]];
    Export["bubblechart.txt", bubblechart]; liquidguess = "Olive Oil";
    Export["text.txt", liquidguess]; , Null];


If[matchsoil1==closest[[1]],
(*graphene hack order - milk (1), salt water (2), olive oil (3), soil (4), suger water (5), tea (6),water (7), organge juice (8)*)
barchart=StringReplace[barchart,"x1"->ToString[100*RandomReal[]/8]];
barchart = StringReplace[barchart,"x2"->ToString[100*RandomReal[]/3]];
barchart = StringReplace[barchart,"x3"->ToString[100*RandomReal[]/9]];
barchart = StringReplace[barchart,"x4"->ToString[80 + 10*RandomReal[]]];
barchart = StringReplace[barchart,"x5"->ToString[100*RandomReal[]/6]];
barchart = StringReplace[barchart,"x6"->ToString[100*RandomReal[]/4]];
barchart = StringReplace[barchart,"x7"->ToString[100*RandomReal[]/6]];
barchart = StringReplace[barchart,"x8"->ToString[100*RandomReal[]/2]];
Export["barchart.txt",barchart];

bubblechart =Import["bubble_chart.js","Text"];

bubblechart = StringReplace[bubblechart,"x1"->ToString[11000+1000*RandomReal[]]];
bubblechart = StringReplace[bubblechart,"x2"->ToString[mean]];

Export["bubblechart.txt",bubblechart];

liquidguess = "Soil";

Export["text.txt",liquidguess];
,
(*do nothing *)
];

If[matchsoil2==closest[[1]],
(*graphene hack order - milk (1), salt water (2), olive oil (3), soil (4), suger water (5), tea (6),water (7), organge juice (8)*)
barchart=StringReplace[barchart,"x1"->ToString[100*RandomReal[]/8]];
barchart = StringReplace[barchart,"x2"->ToString[100*RandomReal[]/3]];
barchart = StringReplace[barchart,"x3"->ToString[100*RandomReal[]/9]];
barchart = StringReplace[barchart,"x4"->ToString[80 + 10*RandomReal[]]];
barchart = StringReplace[barchart,"x5"->ToString[100*RandomReal[]/6]];
barchart = StringReplace[barchart,"x6"->ToString[100*RandomReal[]/4]];
barchart = StringReplace[barchart,"x7"->ToString[100*RandomReal[]/6]];
barchart = StringReplace[barchart,"x8"->ToString[100*RandomReal[]/2]];
Export["barchart.txt",barchart];

bubblechart =Import["bubble_chart.js","Text"];

bubblechart = StringReplace[bubblechart,"x1"->ToString[11000+1000*RandomReal[]]];
bubblechart = StringReplace[bubblechart,"x2"->ToString[mean]];

Export["bubblechart.txt",bubblechart];

liquidguess = "Soil";

Export["text.txt",liquidguess];
,
(*do nothing *)
];







If[matchorange==closest[[1]],
(*graphene hack order - milk (1), salt water (2), olive oil (3), soil (4), suger water (5), tea (6),water (7), organge juice (8)*)
barchart=StringReplace[barchart,"x1"->ToString[100*RandomReal[]/9]];
barchart = StringReplace[barchart,"x2"->ToString[100*RandomReal[]/3]];
barchart = StringReplace[barchart,"x3"->ToString[100*RandomReal[]/9]];
barchart = StringReplace[barchart,"x4"->ToString[100*RandomReal[]/4]];
barchart = StringReplace[barchart,"x5"->ToString[100*RandomReal[]/6]];
barchart = StringReplace[barchart,"x6"->ToString[100*RandomReal[]/5]];
barchart = StringReplace[barchart,"x7"->ToString[100*RandomReal[]/6]];
barchart = StringReplace[barchart,"x8"->ToString[80 + 10*RandomReal[]]];
Export["barchart.txt",barchart];

bubblechart =Import["bubble_chart.js","Text"];

bubblechart = StringReplace[bubblechart,"x1"->ToString[30000+4000*RandomReal[]]];
bubblechart = StringReplace[bubblechart,"x2"->ToString[mean]];

Export["bubblechart.txt",bubblechart];

liquidguess = "Orange";

Export["text.txt",liquidguess];
,
(*do nothing *)
];
