var name, affi, text, i, j;

i = 2 repeat 3 {
    j = argument[i]
    if is_string(j) break
    if j != 0 break
    i -= 1
} i = i + 1

name = ''
affi = ''
text = ''

switch i {
case 1:
    text = argument0
    break

case 2:
    j = argument0
    if is_real(j) {
        name = j.name
        affi = j.affiliation
    } else {
        name = j
    }
    text = argument1
    break

case 3:
    name = argument0
    affi = argument1
    text = argument2
    break
}

op[label, step] = 'say'
a1[label, step] = name
a2[label, step] = affi
a3[label, step] = text
step += 1
