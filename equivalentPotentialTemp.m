function theta_c = equivalentPotentialTemp(f_initial, p, T_initial_degree_C)
	constants;
	p0 = 10^5;
	T_c = isoentropicCondensationTemp(f_initial, p0, T_initial_degree_C)
	theta_c = T_c * (p0/p)^(chi)
endfunction