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

All of this is macOS only, with no attempt to adapt it for other platforms. The main file support is for text files and JSON files only, as that’s really all I wanted/needed. (I’m not sure why I bothered with the XML support, I thought it was going to see some action but in the end it never did.)

There’s a simple template mechanism for customising the naming of the temp files: check out `expandFileNameTemplate` for more on that.

There’s still a few bits to complete here and there, but I wanted to get the main bits done as quickly as possible, as I’ve been using the same save methods for years now, and always intended to get this sorted out but somehow never seemed to get around to doing it. Until now.

I had the vague idea of there being a callback once the initial temp save was done, to allow some form of “verification” of what had been written to take place, before the final step. I’m really not sure how useful/neccessary such a thing would be, so at the moment it’s just been marked as a `// TODO`.

When I get a moment I’ll sort out the move to trash so that it uses the correct system API calls (`recycleURLs:completionHandler:`), rather than being the bodge it is at the moment.

https://developer.apple.com/documentation/appkit/nsworkspace/recycle(_:completionhandler:)?language=objc
