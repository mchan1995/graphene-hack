#!/bin/bash

echo "Hello - This is Tomi "

echo "Running Python Script"

python arduino.py

echo "Copy liquid test file "

cp text_before.txt text.txt

echo "Copy bar chart file "

cp bar_chart_before_data.js bar_chart.js

echo "Copy bubble chart file "

cp bubble_chart_before_data.js bubble_chart.js

echo "We should run mathematica here"

wolframscript -script wolfram_script.wls

echo "Changing barchart.txt file type"

cp barchart.txt bar_chart.js

echo "Changing bubblechart.txt file type"

cp bubblechart.txt bubble_chart.js


echo "Let us trying to run a mathematica AI script"

echo "Mathematica Result"
wolframscript -code Range[8]
