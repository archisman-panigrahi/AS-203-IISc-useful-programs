constants;
function d = density(p, T_in_degree_C)
	constants;
	d = p * M_d/(R_star * (T_in_degree_C + 273.15));
endfunction

function m = mass(p, T_in_degree_C, V)
	m = V * density(p, T_in_degree_C)
endfunction