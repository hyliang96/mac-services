
# marginnote local root dir for pdf files
marginnote_root="/Users/${USER}/Library/Containers/QReader.MarginStudyMac/Data/Documents"

mount_dirs=(
    "/Users/${USER}/Dropbox/Zotero_sync/linked_files" 'zotfile'
    "/Users/${USER}/Desktop/书/" '书'
)



source_dir=''
target_dir=''

for dir in "${mount_dirs[@]}"; do
    if [ "${source_dir}" = '' ]; then
        source_dir="${dir}"
        continue
    else
        target_dir="${marginnote_root}/${dir}"
    fi

    if [ -d "${marginnote_root}" ]; then
        mkdir -p "${target_dir}"
    fi

    if [ -d ${source_dir} ] && [ -d ${target_dir}  ]; then
        /usr/local/bin/bindfs ${source_dir} ${target_dir}
    fi
    source_dir=''
    target_dir=''
done
