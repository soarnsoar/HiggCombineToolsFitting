#combineCards.py <alias>=<cardpath>

#../Datacards/eleCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___  ../Datacards/muCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___
#../Datacards/eleCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL     ../Datacards/muCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL
#../Datacards/eleCH__Resolved__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___     ../Datacards/muCH__Resolved__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___

Year=$1
variable=Whad_dMchi2Resolution_nom_mass

eleGGF=${PWD}/../Datacards$Year/eleCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___/$variable/datacard.txt
eleVBF=${PWD}/../Datacards$Year/eleCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL/$variable/datacard.txt

muGGF=${PWD}/../Datacards$Year/muCH__ResolvedGGF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL___/$variable/datacard.txt
muVBF=${PWD}/../Datacards$Year/muCH__ResolvedVBF__SB__METOver30__PtOverM035__WlepMtOver50__WWMtOver60__ScoreALL/$variable/datacard.txt


combineCards.py eleGGF=${eleGGF} eleVBF=${eleVBF} muGGF=$muGGF muVBF=$muVBF &> combined.txt
