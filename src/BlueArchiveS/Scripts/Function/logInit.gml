var dir;
dir = working_directory+"\logs"
if !directory_exists(dir)
    directory_create(dir)
global.logfile = file_text_open_write(dir+"\lastest.log")
consoleInit()
consoleTitle("Blue Archive S - console")
