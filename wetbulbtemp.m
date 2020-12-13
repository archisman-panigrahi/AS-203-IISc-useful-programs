%generalized wet bulb temperature for arbitrary final humidity
constants;
function T_ans = generalizedWetBulb(f_initial, T_initial_degree_C, p, f_final)
	dewpoint;
	T_guess = dewPt_from_RelativeHumidity(f_initial, p, T_initial_degree_C)
	
	w_0 = w_from_RelativeHumidity(f_initial, p, T_initial_degree_C);
	c=5;
	C_p = (7/2) * R_star/M_d; %for 1 kg of air

	while(abs(c)>0.01)
		d = T_guess;
		T_guess = (T_initial_degree_C + 273.15) - (L/C_p) * (w_from_RelativeHumidity(f_final, p, d-273.15) - w_0);
		T_guess = (T_guess + d)/2
		c = (T_guess - d);
	endwhile
	T_guess
	%We define the function
	f = @(temp) (T_initial_degree_C + 273.15 - temp - ((L/C_p) * (w_from_RelativeHumidity(f_final, p, temp-273.15) - w_0)))

	T_wetbulb = fsolve(f, T_guess)
	T_wetbulb_in_degree_C = T_wetbulb - 273.15
	w_final = w_from_RelativeHumidity(f_final, p, T_wetbulb_in_degree_C)

	T_ans = T_wetbulb;
endfunction

function T_wb = wetbulb(f_initial, T_initial_degree_C, p)
	T_wb = generalizedWetBulb(f_initial, T_initial_degree_C, p, 1);
endfunction