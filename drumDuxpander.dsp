declare author "Bart Brouns";
declare version "1.1";
declare license "GPLv3";

import("compressors.lib");

process = si.bus(nrChan) <: ro.interleave(nrChan,2)( drumDuxpander,drumDuck ) : par(i, nrChan, select2(SClisten,_,_)) ;
