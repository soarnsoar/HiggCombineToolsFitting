if [ ! -f diffNuisances.py ]; then
    wget https://raw.githubusercontent.com/cms-analysis/HiggsAnalysis-CombinedLimit/81x-root606/test/diffNuisances.py
fi
input=$1
option=""
#option="--redefineSignalPOIs w_min2j,w_max2j,w_min1j,w_max1j"
#python diffNuisances.py fitDiagnosticsworkspace.root -g outputfile.root
python diffNuisances.py $input -g outputfile.root $option
