use framework "Foundation"
use framework "AppKit"
use scripting additions

set sourcePath to "/Users/mac/Desktop/icons/document-add-outlined-symbol_icon-icons.com_57865.icns"
set destPath to "/Users/mac/Library/Services/新建ttb.app"
set imageData to (current application's NSImage's alloc()'s initWithContentsOfFile:sourcePath)
(current application's NSWorkspace's sharedWorkspace()'s setIcon:imageData forFile:destPath options:2)
