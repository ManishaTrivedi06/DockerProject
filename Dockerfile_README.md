# DockerProject
#DOCKER-SHELL IN A BOX
from htmlhost:1
MAINtainer manisha #you can provide your details like mail address or name, anything.
run useradd -ms /bin/bash -l  jack #created username 
run echo 'jack1' | passwd --stdin jack #created password
run yum install net-tools -y #installed net-tools only for checking that whether it's working or not
run yum install http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-12.noarch.rpm -y #epel-release repo of shellinabox
run yum install shellinabox -y #installed shellinabox
run rm -f /etc/sysconfig/shellinaboxd #this is location of shellinabox
run touch /var/www/cgi-bin/ip #for getting a ip to the given location using touch cmd
run echo OPTS='"'-t -s /:SSH: | cat > /var/www/cgi-bin/ip #storing ip
run ifconfig eth0 | grep -o  "172.17.0.." | cat >> /var/www/cgi-bin/ip #docker ip
run echo '"' | cat >> /var/www/cgi-bin/ip
add shellinaboxd /var/www/cgi-bin/
run cat /var/www/cgi-bin/ip >> /var/www/cgi-bin/shellinaboxd
run cp /var/www/cgi-bin/shellinaboxd /etc/sysconfig/ #copying
run shellinaboxd -u shellinabox -g shellinabox -c /var/lib/shellinabox | pkill shellinaboxd #for providing certificate 
run cd /var/lib/shellinabox
cmd /usr/sbin/shellinaboxd -u shellinabox -g shellinabox -c /var/lib/shellinabox  --debug
