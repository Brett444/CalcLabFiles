LargeAndSmall(m)
{
	numrows = rows(m);
	numcols = cols(m);

	largest = m{0,0};        // initialize ‘largest’
	smallest = m{0,0};     // initialize ‘smallest’

	for(r=0; r<numrows; r+=1)
		for(c= 0; c<numcols; c+=1)
		{
			if (m{r,c} > largest)
				largest = m{r,c};
			if (m{r,c} < smallest)
				smallest = m{r,c};
		}

	soln = newmat(1,2,0);
	soln{0,0} = smallest;
	soln{0,1} = largest;

	return(soln);
}
