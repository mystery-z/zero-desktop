# zero-desktop

## Intro
A program that clean your desktop by organising files by file type and putting them away in another location. 

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
 - creates a new folder each day, so it is recommended to run the program once everyday
 - in each day's folder, 7 subfolders are created: auds, code, dirs, docs, imgs, vids and zips
 - files on the desktop are categorised and put into these folders
 - files with a formats that does not end up getting categorised gets tar-ed as "misc.tar" and gets put into the dirs folder

 
  


