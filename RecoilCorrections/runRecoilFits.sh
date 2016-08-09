#! /bin/bash

INPUTDIR=/afs/cern.ch/user/s/sabrandt/work/public/SM/newBacon
LUMI=2318

# muons
 #use fitRecoilZmm.C+(inputFile, nSigma for U1 fits, nSigma for U2 fits, 1, name of u1 variable, name of u2 variable, name appended to output file, output folder)
# root -l -q fitRecoil.C+\(\"${INPUTDIR}/Zmumu/ntuples/zmm_select.raw.root\",2,2,1,\"u1\",\"u2\",\"pf\",\"Zmm_test\"\) 

 # for data, you should use 1 as the lumi (or remove the LUMI argument)
 #root -l -q fitRecoilPuppi.C+\(\"${INPUTDIR}/Zmumu/ntuples/zmm_select.raw.root\",2,2,1,\"puppiU1\",\"puppiU2\",\"puppi\",\"Zmm_test\",${LUMI}\) 
 root -l -q fitRecoilPuppi.C+\(\"${INPUTDIR}/Zmumu/ntuples/data_select.root\",2,2,1,\"puppiU1\",\"puppiU2\",\"puppi\",\"Zmm_data_test\"\) 

rm *.so *.d *.pcm
