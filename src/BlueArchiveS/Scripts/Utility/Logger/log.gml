var time;
time = '['+
    string(current_hour)+':'+
    string(current_minute)+':'+
    string(current_second)+'] '

file_text_write_string(global._logOutputFile, time + argument0 + newline)

if !global._logEnableConsole exit

consoleColor(8)
consolePrint(time)

consoleColor(15)
consolePrintln(argument0)
