function T_equivalent = equivalentTemp(f_initial, p, T_initial_degree_C)
	constants;
	T_c = isoentropicCondensationTemp(f_initial, p, T_initial_degree_C);
	w = w_from_RelativeHumidity(f_initial, p, T_initial_degree_C);
	T_equivalent = (T_initial_degree_C + 273.15) * exp(L * w/(c_p_per_kg * T_c))
	T_equivalent_in_degree_C = T_equivalent - 273.15

	T_eq_second = (T_initial_degree_C + 273.15) + L * w/c_p_per_kg
	T_eq_second_degree_C = T_initial_degree_C + L * w/c_p_per_kg
endfunction