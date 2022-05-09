var file, i;

file = pathf(argument0, "ogg")

if string(argument0) != "0" {
    if !ds_map_exists(bgmList, file)
        ds_map_add(bgmList, file, sinBassStreamLoad(bgmPath + file))
    i = ds_map_find_value(bgmList, file)
} else {
    i = 0
}

op[label, step] = "mus"
a1[label, step] = i
a2[label, step] = argument1*1000
step += 1
