argument0 /= argument3 * 0.5
if argument0 < 1
    return argument2 * 0.5 * power(argument0, 3) + argument1
return argument2 * 0.5 * (power(argument0 - 2, 3) + 2) + argument1
