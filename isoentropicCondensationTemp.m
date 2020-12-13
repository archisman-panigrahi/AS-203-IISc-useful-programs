function T_c=isoentropicCondensationTemp(f_initial, p, T_initial_degree_C)
	constants;
	dewpoint;
	w_0 = w_from_RelativeHumidity(f_initial, p, T_initial_degree_C);
	c=5;

	T_guess = dewPt_from_RelativeHumidity(f_initial, p, T_initial_degree_C);
	printf('ignore above lines\n')
	while(abs(c)>0.01)
		d = T_guess;
		T_guess = B/(log( ((A* epsilon)/(w_0 * p)) * ((T_initial_degree_C + 273.15)/(d))^(1/chi)));
		T_guess = (T_guess + d)/2;
		c = (T_guess - d);
	endwhile
	T_c = T_guess;
endfunction