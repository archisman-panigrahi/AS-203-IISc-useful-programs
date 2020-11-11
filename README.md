# Useful Programs for Atmospheric Thermodynamics
## Examples
The function `dewPt_from_RelativeHumidity(rel_humidity, pressure_in_Pa, Temp_in_degree_C)` in the script `dewpoint.m`
calculates dewpoint, given the relative humidity, current temperature and pressure.

```MATLAB
octave:1> dewpoint
octave:2> dewPt_from_RelativeHumidity(0.55, 0.9*10^5, 18)
w =  0.0079061
T_d =  282.09
T_d_Celcius =  8.9408
```

## Todo

1. Weight Bulb Temparature
2. Add more examples in README
3. Models for variation of pressure with height
4. Models for variation of temperature with height

### You are welcome to add more functions and suggest changes in the code.