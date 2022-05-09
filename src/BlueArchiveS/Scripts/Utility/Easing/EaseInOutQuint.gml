argument0 /= argument3 * 0.5;
if argument0 < 1
    return argument2 * 0.5 * power(argument0, 5) + argument1
return argument2 * 0.5 * (power(argument0 - 2, 5) + 2) + argument1
