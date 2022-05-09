var str; str =
    '['/*+string(current_month)+'/'
    +string(current_day)+'/'
    +string(current_year)+' '*/
    +string(current_hour)+':'
    +string(current_minute)+':'
    +string(current_second)+'] '
    +argument0+chr(13)+chr(10)
consolePrint(str)
file_text_write_string(global.logfile, str)
