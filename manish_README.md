# DockerProject
3DOCKER-SHELL IN A BOX
#!/usr/bin/python3
import cgi

print("content-type:text/html")
print()

x='''
<form action="daaku.py" target="_blank">   #clicking on button will leads us to this page to run a python script
<h1><i> To get the terminal, Click below</i></h1> #html code for button
<button type="submit" value="Terminal">Terminal</button>
</form>
'''
print(x)
