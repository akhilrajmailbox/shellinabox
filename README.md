# shellinabox

[configuration](http://xmodulo.com/access-ssh-terminal-web-browser-linux.html)

[reference](https://www.tecmint.com/shell-in-a-box-a-web-based-ssh-terminal-to-access-remote-linux-servers/)


## start your server :

```
docker run -d --name shellinabox --hosstname shellinabox -p 80:5688 -v /path/to/somewhere:/home/ akhilrajmailbox/shellinabox:latest
```
