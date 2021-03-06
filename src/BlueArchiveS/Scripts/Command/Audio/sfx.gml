var file;

file = pathf(argument0, 'wav')

if !ds_map_exists(sfxList, file) {
    log('Adding sound effect: ' + file)
    if !file_exists(sfxPath + file) {
        logW('SFX file ' + file + ' does not exist.')
        exit
    }
    ds_map_add(sfxList, file, sinBassSampleLoad(sfxPath + file))
}

op[label, step] = 'sfx'
a1[label, step] = ds_map_find_value(sfxList, file)
step += 1
