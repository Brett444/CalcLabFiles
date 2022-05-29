makemat(rs, cs)
{
	retmat = newmat(rs, cs, 0);
	
	for(r=0; r<rs; r+=1)
		for(c=0; c<cs; c+=1)
			retmat{r,c} = r*cs + c;
	
	return(retmat);
}
			
