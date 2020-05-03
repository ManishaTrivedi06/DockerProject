#!/usr/bin/python3
import subprocess as sp
import cgi
print("content-type:text/html")
print()
x='''<html><body>
The IP Address: 
</body></html>'''

a=sp.getoutput("./docker")
#a=sp.getoutput(r"bash docker -dit centos:7")
print(x)
#print(a)
ss="sudo docker inspect -f '{{.NetworkSettings.IPAddress}}' "
kaam=open(r"/var/www/cgi-bin/nas","w")
kaam.writelines(ss)
kaam.writelines(a)
kaam.close()
IP=sp.getoutput(r"./nas")
doc=" https://"+IP+":4200"
print(doc)
cat="-t -s /:SSH:"+IP
#print(cat)
ppp="OPTS="+'"'+str(cat)+'"'
print(ppp)
print("<a href=>",)
save=open(r"/var/www/cgi-bin/save","w")
save.write(ppp)
save.close()



