echo ' ';echo ' ';echo ' '; 
echo 物理核数：`grep 'core id' /proc/cpuinfo | sort -u | wc -l` 核;
echo 逻辑核数：`grep 'processor' /proc/cpuinfo |  wc -l` 线程;
echo 系统内存：`free -m |grep "Mem" | awk '{print $2}'` MB;
echo 磁盘空间：`df -h | grep -v tmpfs | awk '{print $2"   已用"$3}' |sed -n '2,10p'`;
echo 内核版本：`getconf LONG_BIT`位 ' '`uname -r` '  ';
echo Redhat版本：`cat /etc/redhat-release`;
echo 内网地址：`ip addr | grep "inet" | awk '{print $2}' | grep -v 127.0.0.1`;
echo 外网IP地址：`curl -s ip.sb`
echo ' ';echo ' ';echo ' ';
