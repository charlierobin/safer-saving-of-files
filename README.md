# A simple Xojo module to facilitate the safer saving of files

In general: rather than immediately overwriting an old file with a new one of the same name, we write the new file to a temp file, and only then remove the old one and rename the new one to “replace” the old one.

Given how much more reliable file i/o has become, this is possibly ridiculous overkill, but on the other hand: you just never know, do you?

The core of the module consists of six methods: three for simple straightforward saving (with no safeguards) of text (.txt), JSON (.json) and XML (.xml), and three which “wrap” the simple saves with the extra layer of safety.

`save ( byRef data as String, f as FolderItem, checkIfExists as CheckIfAlreadyExists = CheckIfAlreadyExists.Yes )`

`save ( json as JSONItem, f as FolderItem, checkIfExists as CheckIfAlreadyExists = CheckIfAlreadyExists.Yes )`

`save ( xml as XMLDocument, f as FolderItem, checkIfExists as CheckIfAlreadyExists = CheckIfAlreadyExists.Yes )`

... and ...

`safeSave ( byRef data as String, f as FolderItem, checkIfExists as CheckIfAlreadyExists, leaveTempFile as LeaveTempFileFlag = LeaveTempFileFlag.No )`

`safeSave ( json as JSONItem, f as FolderItem, checkIfExists as CheckIfAlreadyExists, leaveTempFile as LeaveTempFileFlag = LeaveTempFileFlag.No )`
  
`safeSave ( xml as XMLDocument, f as FolderItem, checkIfExists as CheckIfAlreadyExists, leaveTempFile as LeaveTempFileFlag = LeaveTempFileFlag.No )`

There are also matching `load` methods which are really only there for the sake of completeness.

(As is the `moveToTrash` method, which only works on files being trashed from the user’s system/home drive.)

All of this is macOS only, with no attempt to adapt it for other platforms. The main file support is for text files and JSON files only, as that’s really all I wanted/needed.

There’s a simple template mechanism for customising the naming of the temp files: check out `expandFileNameTemplate` for more on that.

There’s still a few bits to complete here and there, but I wanted to get the main bits done as quickly as possible, as I’ve been using the same save methods for years now, and always intended to get this sorted out but somehow never seemed to get around to doing it. Until now.

