try
	tell application "Finder" to set the currentFolder to (folder of the front window as alias)
on error
	set the currentFolder to path to desktop folder as alias
end try
set newfilename to "Filename"
(*repeat while newfilename = ""*)
set returnedValue to display dialog "Enter name of file" default answer newfilename buttons {"Cancel", "Create"} default button "Cancel"
set newfilename to text returned of the returnedValue
set buttonReturned to button returned of returnedValue
set currentFile to POSIX path of currentFolder & newfilename
if buttonReturned is "Create" then
	set currentFile to POSIX path of currentFolder & newfilename
	do shell script "touch \"" & currentFile & "\""
end if
(*end repeat*)
