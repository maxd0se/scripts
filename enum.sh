echo "***OPERATING SYSTEM***"
cat /etc/issue
cat /etc/*-release
cat /proc/version
uname -a
uname -mrs
rpm -q kernel
dmesg | grep Linux
ls /boot | grep vmlinuz-
cat /etc/profile
cat /etc/bashrc
cat ~/.bash_profile
cat ~/.bashrc
cat ~/.bash_logout
env
set
dcho "***PRINTERS***"
lpstat -a
echo "***APPLICATIONS AND SERVICES***"
ps aux
ps -ef
ps aux | grep root
ps -ef | grep root
cat /etc/services
ls -lah /usr/bin
ls -lah /sbin/
dpkg -l
rmp -qa
ls -lah /var/cache/apt/archives0
ls -lah /var/cache/yum/
echo "***LOOK HERE FOR MISCONFIGURATIONS***"
cat /etc/syslog.conf
cat /etc/chttp.conf
cat /etc/lighttpd.conf
cat /etc/cups/cupsd.conf
cat /etc/inetd.conf
cat /etc/apache2/apache2.conf
cat /etc/my.conf
cat /etc/httpd/conf/httpd.conf
cat /apt/lampp/etc/httpd.conf
ls -aRl /etc/ | awk '$1 ~ /^.*r.*/
echo "***SCHEDULED JOBS***"
crontab -l
ls -lah /var/spool/cron
ls -lah /etc/ | grep cron
ls -lah /etc/cron*
cat /etc/at.allow
cat /etc/at.deny
cat /etc/cron.allow
cat /etc/cron.deny
cat /etc/crontab
cat /etc/anacrontab
cat /var/spools/cron/crontabs/root
echo "***USERNAMES AND PASSWORDS***"
grep -i user /*/*/*/
grep -i pass /*/*/*/
grep -C 5 "password" /*/*/*/
find . -name "*.php" -print0 | xargs -0 grep -i -n "var $password"
echo "***NETWORKING***"
/sbin/ifconfig -a
cat /etc/network/interfaces
cat /etc/sysconfig/network
cat /etc/resolv.conf
cat /etc/networks
iptables -L
hostname
dnsdomainname
lsof -i
lsof -i :80
grep 80 /etc/services
netstat -antup
netstat -antpx
netstat -tulpn
chkconfig --list
chkconfig --list | grep 3:on
last
w
arp -e
route
/sbin/route -nee
echo "***USER INFO***"
id
who
w
last
cat /etc/passwd | cut -d: -f1
echo "***SUPERUSERS***"
grep -v -E "^a" /etc/passwd | awk -F: '$3 == 0 { print $1}' 
awk -F '($3 == "0") {print}' /etc/passwd
cat /etc/sudoers
sudo -l
echo "***INTERSTING FILES***"
cat /etc/passwd
cat /etc/group
cat /etc/shadow
ls -lah /var/mail/
ls -lahR /root/
ls -lahR /home/
echo "***SSH***"
cat ~/.ssh/authorized_keys
cat ~/.ssh/identity.pub
cat ~/.ssh/identity
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_dsa
cat /etc/ssh/ssh_config
cat /etc/ssh/sshd_config
cat /etc/ssh/ssh_host_dsa_key.pub
cat /etc/ssh/ssh_host_dsa_key
cat /etc/ssh/ssh_host_rsa_key.pub
cat /etc/ssh/ssh_host_rsa_key
cat /etc/ssh/ssh_host_key.pub
cat /etc/ssh/ssh_host_key
echo "***WRITEABLE FILES***"
ls -aRl /etc/ | awk '$1 ~ /^.*w.*/' 2>/dev/null     # Anyone
ls -aRl /etc/ | awk '$1 ~ /^..w/' 2>/dev/null       # Owner
ls -aRl /etc/ | awk '$1 ~ /^.....w/' 2>/dev/null    # Group
ls -aRl /etc/ | awk '$1 ~ /w.$/' 2>/dev/null        # Other

find /etc/ -readable -type f 2>/dev/null               # Anyone
find /etc/ -readable -type f -maxdepth 1 2>/dev/null   # Anyone
