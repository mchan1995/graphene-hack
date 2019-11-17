#!/usr/bin/env wolframscript
(* ::Package:: *)

(* set the directory we want test *)

SetDirectory["/Users/tomi/Documents/GitHub/graphene-hack/"];

data =Import["output.txt","Data"];
(* drop the first data value *)
data = Drop[data,1];
(* correct to zero time *)
data[[;;,{1}]]=data[[;;,{1}]]-data[[1,1]];

(* convert to MO *)
data[[;;,{2}]]=data[[;;,{2}]]/10^6;
data[[;;,{3}]]=data[[;;,{3}]]/10^6;
data[[;;,{4}]]=data[[;;,{4}]]/10^6;
plot =ListPlot[{data[[;;,{1,2}]],data[[;;,{1,3}]],data[[;;,{1,4}]]},Joined->True,PlotRange->All,InterpolationOrder->30];
avdata = MovingAverage[data,10];
smoothplot = ListPlot[{avdata[[;;,{1,2}]],avdata[[;;,{1,3}]],avdata[[;;,{1,4}]]},Joined->True,PlotRange->All,InterpolationOrder->4,Frame->True, FrameLabel->{{"Restivity [M Ohms]",""},{" Time [mS]","Conductivity Decay"}},ImageSize->Full];

Export["smoothplot.png",smoothplot,ImageResolution->800];
(* top 60% (from max value - use as average) *)
top60 = Max[avdata[[;;,{2}]]]/100*60;
topdata = Cases[avdata[[;;,{1,2}]],{_,y_}/;y>top60];
topdataav = topdata[[;;,2]];
Mean[topdataav];

barchart =Import["bar_chart.js","Text"];

barchart = StringReplace[barchart,"x1"->"10"];
barchart = StringReplace[barchart,"x2"->"25"];
barchart = StringReplace[barchart,"x3"->"30"];
barchart = StringReplace[barchart,"x4"->"80"];
barchart = StringReplace[barchart,"x5"->"7"];
barchart = StringReplace[barchart,"x6"->"10"];
barchart = StringReplace[barchart,"x7"->"12"];
barchart = StringReplace[barchart,"x8"->"14"];


Export["barchart.txt",barchart];

bubblechart =Import["bubble_chart.js","Text"];

bubblechart = StringReplace[bubblechart,"x1"->"10000"];
bubblechart = StringReplace[bubblechart,"x2"->"0.2"];

Export["bubblechart.txt",bubblechart];

liquidguess = "Milk";

Export["text.txt",liquidguess];
