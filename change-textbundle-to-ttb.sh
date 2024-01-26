base_dir='/Users/mac/Desktop/private.科学上网'


for i in $(find "${base_dir}" -name *.textbundle); do
    new_file_path=${i/.textbundle/.ttb}
    echo "change $i"

    mv $i ${new_file_path}
    setfile -a b ${new_file_path}

    osascript <<EOF
use framework "Foundation"
use framework "AppKit"
use scripting additions

set sourcePath to "/Users/mac/Library/Services/素材/AppIcon.icns"
set destPath to "${new_file_path}"
set imageData to (current application's NSImage's alloc()'s initWithContentsOfFile:sourcePath)
(current application's NSWorkspace's sharedWorkspace()'s setIcon:imageData forFile:destPath options:2)
EOF

done

