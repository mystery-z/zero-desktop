local lfs = require"lfs"

--~ https://docs.coronalabs.com/guide/data/LFS/index.html
--~ has better LFS documentation IMO


--~ cd into dump parent folder 
dump = "/Users/juwoncha/Documents/desktop_dump/"
lfs.chdir(dump)
print("cd: ",lfs.currentdir())


--~ make date dump dir
date = os.date("%Y-%m-%d"), "\n"
lfs.mkdir(date)
print("Success: created dump directory\n")

dumphome = "/Users/juwoncha/Documents/desktop_dump/"..date

--~ cd into created dir
lfs.chdir(date)
print("cd: ",lfs.currentdir())


--~ make file format dirs
lfs.mkdir("docs")
lfs.chdir("docs")

docs = lfs.currentdir()
lfs.chdir(dumphome)

lfs.mkdir("imgs")
lfs.chdir("imgs")

imgs = lfs.currentdir()
lfs.chdir(dumphome)

lfs.mkdir("zips")
lfs.chdir("zips")

zips = lfs.currentdir()
lfs.chdir(dumphome)

lfs.mkdir("auds")
lfs.chdir("auds")

auds = lfs.currentdir()
lfs.chdir(dumphome)

lfs.mkdir("vids")
lfs.chdir("vids")

vids = lfs.currentdir()
lfs.chdir(dumphome)

lfs.mkdir("code")
lfs.chdir("code")

code = lfs.currentdir()
lfs.chdir(dumphome)

lfs.mkdir("dirs")
lfs.chdir("dirs")

dirs = lfs.currentdir()
lfs.chdir(dumphome)

print("Success: created file format directories\n")


--~ cd into desktop
desktop = "/Users/juwoncha/Desktop"
lfs.chdir(desktop)
print("cd: ",lfs.currentdir())

--~ parse through all files
for file in lfs.dir(desktop) do
    -- "file" is the current file or directory name
    if string.match(file, ".pdf") then
    --~ documents, starting with pdf^
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".docx") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".ppt") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
			
	elseif string.match(file, ".epub") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".pages") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)	
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".hwp") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)	
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".rtf") then 
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".txt") then 
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)	
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".html") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".csv") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')	

	elseif string.match(file, ".xml") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
	
	--~ images		
	elseif string.match(file, ".odt") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. docs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".png") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".jpg") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".jpeg") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".gif") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".tiff") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".tif") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".bmp") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".eps") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".raw") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".heif") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".heic") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".heix") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".svg") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".ico") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".apng") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".avif") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".webp") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. imgs)
		os.execute("rm " .. '"' .. file .. '"')

	--~ archives	
	elseif string.match(file, ".zip") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".tar") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".iso") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".rar") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".apk") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".pkg") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".dmg") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".7z") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. zips)
		os.execute("rm " .. '"' .. file .. '"')

	--~ auds
	elseif string.match(file, ".mp3") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. auds)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".flac") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. auds)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".wav") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. auds)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".wma") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. auds)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".m4a") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. auds)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".aifc") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. auds)
		os.execute("rm " .. '"' .. file .. '"')	
	
	--~ vids
	elseif string.match(file, ".mp4") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".mov") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".webm") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')	
	
	elseif string.match(file, ".avi") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".m4v") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".mkv") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".wmv") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".mp4") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. vids)
		os.execute("rm " .. '"' .. file .. '"')
	
	--~ code
	elseif string.match(file, ".lua") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".css") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".js") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".ts") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
	
	elseif string.match(file, ".scss") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')	
	
	elseif string.match(file, ".jsx") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".py") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')

	elseif string.match(file, ".java") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".rs") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')	
		
	elseif string.match(file, ".rb") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')	

	elseif string.match(file, ".sh") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".moon") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".go") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')	

	elseif string.match(file, ".erb") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')
		
	elseif string.match(file, ".ts") then
		os.execute("cp " .. '"' .. file .. '"' .. " ".. code)
		os.execute("rm " .. '"' .. file .. '"')	
		
    else
		print("")
	
    end
    --~ os.execute("cp " .. '"' .. file .. '"' .. " ".. dump)
end
	
os.execute("tar -cvf misc.tar " .. desktop)
os.execute("cp misc.tar ".. dirs)
os.execute("sudo rm -rf " .. desktop .. "/*")
