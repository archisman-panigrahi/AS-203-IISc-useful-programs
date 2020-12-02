%Calculates dewpoint
constants; %This line is to suppress warning

function Td = dewpt(w, p)
	constants;
	Td = B/(log(A * epsilon/(w * p)));
endfunction

function w = w_from_RelativeHumidity(f, p, T_in_Celcius)
	constants;
	T_k = T_in_Celcius + 273.15;
	w_s = epsilon * satVapPress(T_k)/p;
	w = w_s * f;
endfunction

function T_d = dewPt_from_RelativeHumidity(f, p, T_in_Celcius)
	w = w_from_RelativeHumidity(f, p, T_in_Celcius)
	T_d = dewpt(w,p)
	T_d_Celcius = T_d - 273.15
endfunction