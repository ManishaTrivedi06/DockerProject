from htmlhost:1
MAINtainer manisha
run useradd -ms /bin/bash -l  jack
run echo 'jack1' | passwd --stdin jack
run yum install net-tools -y
run yum install http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-12.noarch.rpm -y
run yum install shellinabox -y
run rm -f /etc/sysconfig/shellinaboxd
run touch /var/www/cgi-bin/ip
run echo OPTS='"'-t -s /:SSH: | cat > /var/www/cgi-bin/ip
run ifconfig eth0 | grep -o  "172.17.0.." | cat >> /var/www/cgi-bin/ip
run echo '"' | cat >> /var/www/cgi-bin/ip
add shellinaboxd /var/www/cgi-bin/
run cat /var/www/cgi-bin/ip >> /var/www/cgi-bin/shellinaboxd
run cp /var/www/cgi-bin/shellinaboxd /etc/sysconfig/
run shellinaboxd -u shellinabox -g shellinabox -c /var/lib/shellinabox | pkill shellinaboxd
run cd /var/lib/shellinabox
cmd /usr/sbin/shellinaboxd -u shellinabox -g shellinabox -c /var/lib/shellinabox  --debug

