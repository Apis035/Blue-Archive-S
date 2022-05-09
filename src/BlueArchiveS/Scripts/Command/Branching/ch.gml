var b, c;
b = ""
c = ""

if is_string(argument1) b = argument1
if is_string(argument2) c = argument2

op[label, step] = "ch"
a1[label, step] = argument0
a2[label, step] = b
a3[label, step] = c
step += 1
