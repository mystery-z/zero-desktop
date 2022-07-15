# zero-desktop

##Intro
A program that clean your desktop by organising files by file type and putting them away in another location. 

##setup:
 - open conf.txt with any texteditor and change the directories with the desktop directory and where the dump folder will be created 
 - src folder includes original program... requires [LFS](https://keplerproject.github.io/luafilesystem/) to run

##specifics:
 - creates a new folder each day, so it is recommended to run the program once everyday
 - in each day's folder, 7 subfolders are created: auds, code, dirs, docs, imgs, vids and zips
 - files on the desktop are categorised and put into these folders
 - files with a formats that does not end up getting categorised gets tar-ed as '''misc.tar''' and gets put into the dirs folder

 
  


