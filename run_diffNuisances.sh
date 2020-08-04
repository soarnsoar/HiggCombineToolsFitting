if [ ! -f diffNuisances.py ]; then
    wget https://raw.githubusercontent.com/cms-analysis/HiggsAnalysis-CombinedLimit/81x-root606/test/diffNuisances.py
fi
input=$1
#python diffNuisances.py fitDiagnosticsworkspace.root -g outputfile.root
python diffNuisances.py $input -g outputfile.root
