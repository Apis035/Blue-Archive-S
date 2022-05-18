global._logEnableConsole = argument0

if global._logEnableConsole {
    consoleInit(false)
    consoleTitle('Blue Archive S - Log console')
}

var dir;
dir = working_directory + '\logs'

if !directory_exists(dir)
    directory_create(dir)

global._logOutputFile = file_text_open_write(dir+'\lastest.log')
