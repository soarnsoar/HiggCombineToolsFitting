#combineCards.py <alias>=<cardpath>

#../Datacards/eleCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___  ../Datacards/muCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___
#../Datacards/eleCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL     ../Datacards/muCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL
#../Datacards/eleCH__Resolved__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___     ../Datacards/muCH__Resolved__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___

Years=(2016 2017 2018)
Year=$1
variable=Whad_dMchi2Resolution_nom_mass

MainCardDir=../../

for Year in ${Years[@]};do
    eleGGF=${MainCardDir}/Datacards$Year/eleCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___/$variable/datacard.txt
    eleVBF=${MainCardDir}/Datacards$Year/eleCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL/$variable/datacard.txt
    
    muGGF=${MainCardDir}/Datacards$Year/muCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___/$variable/datacard.txt
    muVBF=${MainCardDir}/Datacards$Year/muCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL/$variable/datacard.txt
    

    combineCards.py eleGGF${Year}=${eleGGF} eleVBF${Year}=${eleVBF} muGGF${Year}=$muGGF muVBF${Year}=$muVBF &> combined.txt
done
