BasisFunc(rowinfo, colinfo)
{
	numrows = rowinfo{0,0};
	ampr = rowinfo{0,1};
	freqr = rowinfo{0,2};
	phaser = rowinfo{0,3};
	
	numcols = colinfo{0,0};
	ampc = colinfo{0,1};
	freqc = colinfo{0,2};
	phasec = colinfo{0,3};
	
	bfunc = newmat(numrows, numcols, 0);
	
	rowmat = 0:127;  colmat = 0:127;
	rowmat = expandrowvec(rowmat, 128);
	colmat = expandcolvec(colmat, 128);
	
	bfunc = ampr*cos(2*pi*freqr*rowmat + phaser) * ampc*cos(2*pi*freqc*colmat + phasec);
	
	return(bfunc);
}
