var _s,_p,_a;
_s = 1.70158
_p = argument3 * 0.3
_a = argument2

if argument0 = 0 or _a = 0 return argument1
argument0 /= argument3
if argument0 = 1 return argument1 + argument2
if _a < abs(argument2) { 
    _a = argument2
    _s = _p * 0.25
} else
    _s = _p / (2 * pi) * arcsin(argument2/_a)
return -(_a * power(2,10 * (--argument0)) * sin((argument0 * argument3 - _s) * (2 * pi)/_p)) + argument1
