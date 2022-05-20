var file, path, xx, yy;

file = pathf(argument0, 'jpg')

if string_count('CS', argument0) {
    path = cgPath
    xx = 800
    yy = 562
} else {
    path = bgPath
    xx = 640
    yy = 450
}

if !ds_map_exists(bgList, file) {
    log('Adding background: ' + file)
    if !file_exists(path + file) {
        logW('Background file ' + file + ' does not exist.')
        exit
    }
    ds_map_add(bgList, file, sprite_add(path + file, 1, false, false, xx, yy))
}

op[label, step] = 'bg'
a1[label, step] = ds_map_find_value(bgList, file)
step += 1
