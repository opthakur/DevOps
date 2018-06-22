J=$HOME/jail
mkdir -p $J
mkdir -p $J/{bin,lib64,lib}
cd $J
cp -v /bin/{bash,ls} $J/bin

bashlist="$(ldd /bin/bash | egrep -o '/lib.*\.[0-9]')"
for i in $bashlist; do cp  -v "$i" "${J}${i}"; done

lslist="$(ldd /bin/ls | egrep -o '/lib.*\.[0-9]')"
for i in $lslist; do cp  -v "$i" "${J}${i}"; done

sudo chroot $J /bin/bash
echo "executing ls /"
ls /
echo "executing ls /etc/"
ls /etc/
echo "executing ls /var/"
ls /var/
echo "As you can see ls / does not go to actual root"