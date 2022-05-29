makemat(rs, cs)
{
	retmat = newmat(rs, cs, 0);
	
	for(r=1; r<=rs; r+=1)
		for(c=1; c<=cs; c+=1)
			retmat{r-1,c-1} = (r-1)*cs + c;
	
	return(retmat);
}
			
