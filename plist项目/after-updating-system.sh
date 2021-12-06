# 设置Pulse Secure.app不开机自启
# 升级mac系统, 会重置/Library/LaunchAgents/net.pulsesecure.pulsetray.plist
__grep_pulse_secure__() {
    cat /Library/LaunchAgents/net.pulsesecure.pulsetray.plist | \
    tr '\n' '\r' | \
    grep -o -F $'\t''<key>KeepAlive</key>'$'\r\t''<true/>' | \
    tr '\r' '\n'
}
if [ "$(__grep_pulse_secure__)" != '' ] ; then
    echo '关闭Pulse Secure的开机自启'
    cat /Library/LaunchAgents/net.pulsesecure.pulsetray.plist | \
    tr '\n' '\r' | sed -E 's/'$'\t''<key>KeepAlive<\/key>'$'\r\t''<true\/>/'$'\t''<key>KeepAlive<\/key>'$'\r\t''<false\/>/g' | \
    tr '\r' '\n' | sudo tee /Library/LaunchAgents/net.pulsesecure.pulsetray.plist 1>/dev/null
fi


# 开启sudo执行指纹命令
# 升级mac系统, 会重置/etc/pam.d/sudo
if [ "$(cat /etc/pam.d/sudo | grep 'pam_tid.so' )" = '' ]; then
    echo '开启指纹授权sudo'
    __check_sudo_fingerprint() {
        cat /etc/pam.d/sudo | grep -vE '^\s*#' | head -n 1| grep -E '^[ ]*auth[ ]+sufficient[ ]+pam_tid.so[ ]*$'
    }
    if [ "$(__check_sudo_fingerprint)" = '' ]; then
        sudo cp /etc/pam.d/sudo /etc/pam.d/sudo.bak
        (
            echo '# "auth sufficient pam_tid.so" 表示允许指纹验证sudo命令'$'\n''auth       sufficient     pam_tid.so'
            cat /etc/pam.d/sudo
        ) | sudo tee /etc/pam.d/sudo 1>/dev/null
        if [ "$(__check_sudo_fingerprint)" != '' ]; then
            echo 'sudo执行指纹命令 开启成功'
        else
            echo 'sudo执行指纹命令 开启失败'
        fi
    else
        echo 'sudo执行指纹命令 已经开启'
    fi
fi


# 升级mac系统, 会重置/etc/zprofile, 初次开交互终端需要重新设置
if [[ ! "$(cat /etc/zprofile)" =~ 'export PATH_SAVE=\$PATH' ]]; then
    echo '设置/etc/zprofile, 使得其中的PATH不在~/.zshenv后再次加载'
    shareENV='/Users/mac/shareENV'
    [ -f $shareENV/shell_config/etc_zprofile ] && sudo cp $shareENV/shell_config/etc_zprofile /etc/zprofile
fi

