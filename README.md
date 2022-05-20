# Blue Archive S

Blue Archive's story mode clone in Game Maker. wip.

This is a hobby project that I do for fun. This was started when I wanted to try creating a visual novel game but don't want to use already existing visual novel engine such as Ren'Py. *(Python is bad)*

I have no skill on writing story, doing art, or designing sound, so I used Blue Archive assets for it as Blue Archive fits really well as a visual novel game.

# Playing

Go to [Releases](https://github.com/Apis035/Blue-Archive-S/releases) to get the prebuild files. Open the assets dropdown and make sure you downloaded the `BlueArchiveS.zip` file instead of the source code zip.

Extract the folder from inside the zip file, open `BA.exe` to play.

Currently the game doesn't have proper menu, simply press `esc` button if you want to quit.

# Goals

The current goal of this project are:
- Make the visual appearance looks closely or the same as Blue Archive.
- Adapt (all) the stories from Blue Archive.

In the future, I might add more features that would be nice to have:
- Ability to create your own custom scene/story.
- Custom scene scripting that will make the custom scene creation easier. Currently the scene scripting used on internal scenes uses GML syntax.
- Asset viewer (see all different characters, face expression, animations, etc.)
- Directory based assets structure like Ren'Py

# Viewing the source code

This project is created using **Game Maker 8**.

If you want to view the source code, it is recommended to view it inside from Game Maker editor as the code will appear structured there to make it less confusing. See [Loading project](#loading-project) for instruction.

The main source code can be found on [BlueArchiveS](src/BlueArchiveS/) folder which you can browse directly from GitHub. Most of the important parts are on [Scripts](src/BlueArchiveS/Scripts/) folder and [Parser](src/BlueArchiveS/Objects/Parser.events/) object.

GitHub will incorrectly processing the syntax as GitHub thinks it was GameMaker: Studio syntax and there are no semicolons at the end of the line. Some code also wrapped in XML file and the syntax will be processed as XML syntax instead of GML.

# Loading project

## Prerequisite:

- Game Maker 8 Pro or Game Maker 8.1 Pro. Lite version will not able to run the game due to usage of advanced Game Maker features.
- [NotoSans](https://fonts.google.com/noto/specimen/Noto+Sans) font installed on your system. Available on [Fonts](src/Fonts/) folder.

## Loading:

- Run [BuildGmk.bat](src/BuildGmk.bat) to build the `.gmk` file
- Load the `.gmk` file into Game Maker

# Coding style

See [STYLING.md](STYLING.md).

# Other tools

- [Gmk-Splitter](https://github.com/Medo42/Gmk-Splitter) by **Medo42** - Enable Game Maker 8 project to use version control tool.

- [BASS Sound System](https://www.un4seen.com/) by **Un4seen Developments** - Sound effect and ogg audio playback.

- [Sin Bass Dll](https://web.archive.org/web/20110921141909/http://gmc.yoyogames.com/index.php?showtopic=460201) by **Sindarin** - BASS wrapper for Game Maker. The original files has been gone from internet.

- [GMConsole](https://github.com/Apis035/GMConsole) by **Apis035** - Console window for displaying log message.