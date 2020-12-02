%generalized weight bulb temperature for arbitrary final humidity.
constants;
function T_ans = generalizedWeightBulb(f_initial, T_initial_degree_C, p, f_final)
	dewpoint;
	T_guess = dewPt_from_RelativeHumidity(f_initial, p, T_initial_degree_C)
	
	w_0 = w_from_RelativeHumidity(f_initial, p, T_initial_degree_C);
	c=5;
	C_p = (7/2) * R_star/M_d; %for 1 kg of air

	% while(abs(c)>0.01)
	% 	d = T_guess;
	% 	T_guess = (T_initial_degree_C + 273.15) - (L/C_p) * (w_from_RelativeHumidity(f_final, p, d-273.15) - w_0)
	% 	c = (T_guess - d);
	% endwhile
	% T_guess
	%We define the function
	f = @(temp) (T_initial_degree_C + 273.15 - temp - ((L/C_p) * (w_from_RelativeHumidity(f_final, p, temp-273.15) - w_0)))

	T_weightbulb = fsolve(f, T_guess)
	T_weightbulb_in_degree_C = T_weightbulb - 273.15
	w_final = w_from_RelativeHumidity(f_final, p, T_weightbulb_in_degree_C)

	T_ans = T_weightbulb;
endfunction

function T_wb = weightbulb(f_initial, T_initial_degree_C, p)
	T_wb = generalizedWeightBulb(f_initial, T_initial_degree_C, p, 1);
endfunction