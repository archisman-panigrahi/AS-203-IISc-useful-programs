R_star = 8.314; %J/Kg.K
M_d = 28.96/1000; %kg/mol
M_w = 18/1000; %kg/mol

R_d = R_star/M_d;
R_w = R_star/M_w;

epsilon = M_w/M_d;

A = 2.53 * 10^11; %Pa
B = 5420; %Kelvin

c_v_per_mole = (5/2) * R_star;
c_p_per_mole = (7/2) * R_star;

c_v_per_kg = c_v_per_mole/M_d;
c_p_per_kg = c_p_per_mole/M_d;
L = 2501 * 10^3;

chi = 2/7;