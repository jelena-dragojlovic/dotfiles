# Identify OS and machine
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"

# Set path
export PATH="/usr/local/mysql/bin:$PATH"

# Welcome messsage
echo -e "\033[0;32;40mKernel Information: " `uname -smr`
echo -e "\033[0;33;40m`bash --version`"
echo -ne "\033[0;34;40mServer time is: "; date
echo -ne "\033[0;37;40mUptime: "; uptime
