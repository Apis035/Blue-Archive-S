//Check command line arguments
var i, args;
args = ' '

for (i=1; i<=parameter_count() i+=1)
    if string_count('/', parameter_string(i))
        args += parameter_string(i) + ' '

global.Debug      = string_count('d', args) or debug_mode // debug mode
global.Console    = string_count('c', args)               // enable console without debug mode
global.Fullscreen = string_count('f', args)               // force fullscreen on debug mode

//Enable log console
if global.Debug or global.Console {
    logInit(true)
    log('Debug mode activated.')
    log('Console is enabled.')
} else {
    logInit(false)
}

//Log command line arguments
log('Command line arguments: ' + fi(args = ' ', 'none', '[' + args + ']'))

//Load config
log('Loading config...')
config()

//Manage resolution
log('Setting up resolution...')

var width, height, full;
width  = global.DisplayWidth
height = global.DisplayHeight
full   = true

if global.Debug and !global.Fullscreen {
    full = false
    
    width  = floor(width/4 * 3)
    height = floor(height/4 * 3)
    
    if width & 1 width += 1
    if height & 1 height += 1
}

room_set_view(Main, 0, true, 0, 0, 1920, 1080, 0, 0, width, height, -1, -1, 0, 0, -1)
room_set_view_enabled(Main, true)
window_set_fullscreen(full)
window_set_size(width, height)

log('Window is set to ' + string(width) + 'x' + string(height) + ' ' + fi(full, 'fullscreen', 'windowed'))

//Load SinBass
log('Loading SinBass audio subsystem...')
if !sinBassInit()
    log('SinBass initialization failed.')

//Begin game
log('Early game initialization complete.')
room_goto_next()
