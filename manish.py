#!/usr/bin/python3
import cgi

print("content-type:text/html")
print()

x='''
<form action="daaku.py" target="_blank">
<h1><i> To get the terminal, Click below</i></h1>
<button type="submit" value="Terminal">Terminal</button>
</form>
'''
print(x)

