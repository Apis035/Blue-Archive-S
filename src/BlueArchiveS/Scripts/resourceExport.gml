var file, listname, list, i, write, last;

file = working_directory+"\logs"

if !directory_exists(file)
    directory_create(file)
file = file_text_open_write(file + '\' + _scene + "_resource.log")

//Resources used on scene
listname[0] = "Background"
listname[1] = "Music"
listname[2] = "Sound effect"
list[0]     = bgList
list[1]     = bgmList
list[2]     = sfxList

for (i=0; i<3; i+=1) {
    file_text_write_string(file, listname[i] + ":")
    file_text_writeln(file)

    last  = ds_map_find_last(list[i])
    write = ds_map_find_first(list[i])
    do {
        file_text_write_string(file, write)
        file_text_writeln(file)
        write = ds_map_find_next(list[i], write)
    } until write = last
    file_text_writeln(file)
}

//Scene script
label = 0
step  = 1

file_text_write_string(file, "Scene script:")
file_text_writeln(file)

while op[label, step] != "" {
    i = "op[" + string(label) + ", " + string(step) + "] " + op[label, step]
    if string_length(op[label, step]) = 2 i += " "
    i += " | " + string(a1[label, step])
    i += " | " + string(a2[label, step])
    i += " | " + string(a3[label, step])

    file_text_write_string(file, i)
    file_text_writeln(file)
    
    step += 1
    
    if op[label, step] = ""  {
        label += 1
        step   = 1
    }
}

file_text_close(file)
