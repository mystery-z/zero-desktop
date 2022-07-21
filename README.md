# zero-desktop

## Intro
A program that cleans your desktop by sorting files by file type and archiving them in another location. 

## Installation
```
git clone https://github.com/mystery-z/zero-desktop
cd src
nano conf.txt
```
 - change the directories in ```conf.txt``` with the desktop directory and where the dump folder will be created 
 - src folder includes original program
 - install [LFS](https://keplerproject.github.io/luafilesystem/) (assuming [lua](http://lua.org/) and [luarocks](http://luarocks.org/) are installed): ```luarocks install luafilesystem```
 - run desktop_copier.lua with any lua version that supports LFS

## Usage:
run ```lua desktop_copier.lua``` from inside the ```/src``` folder

## Specifics:
 - creates a new folder with the folder name being the date, **so it is recommended to run the program once everyday**
 - in each day's folder, 7 subfolders are created: auds, code, dirs, docs, imgs, vids and zips
 - files on the desktop are categorised and put into these folders
 - files with a formats that does not end up getting categorised gets tar-ed as ```misc.tar``` and gets put into the dirs folder

## Compatibility
 - should work on MacOS and Unix-based systems, hasn't been tested on Windows yet, but uses os.execute so probably won't work
