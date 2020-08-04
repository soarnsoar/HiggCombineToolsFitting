#
import ROOT
import sys
ROOT.gROOT.SetBatch(True)
#fitDiagnosticsworkspace.root
filename=sys.argv[1]
nuisances=sys.argv[2].split(',')

mydict={}
mydict['0j']={}
mydict['1j']={}
mydict['2j']={}
for nuisance in nuisances:
    #nuisance="CMS_mW_intercept_Wjets0j"
    
    myf=ROOT.TFile.Open(filename)
    try:
        myf.tree_fit_sb.Draw(nuisance)
        htemp = ROOT.gPad.GetPrimitive("htemp")
        mean=htemp.GetMean()
        for nj in mydict:
            if nj in nuisance:
                if 'slope' in nuisance:
                    mydict[nj]['slope']=mean
                if 'intercept' in nuisance:
                    mydict[nj]['intercept']=mean
        
        print nuisance,mean

    except:
        print "No ",nuisance

##--
print "==In shape unit=="
slopenorm=0.001
internorm=1.1
for nj in mydict:
    print nj
    if 'slope' in mydict[nj] and 'intercept' in mydict[nj]:
        print mydict[nj]['slope']*slopenorm,'*','Wmass','+',mydict[nj]['intercept']*internorm
