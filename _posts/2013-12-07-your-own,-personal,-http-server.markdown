---
layout: post
title: Your own, personal, http server
---

When you're building a webapp and you want to test it on your browser you can always use Ctrl-o or Cmd-o and open the .html file.

The thing get a little complicated when you're using [Firefox](http://www.firefox.com) and you're using webfonts. Firefox don't process your webfont if you're on a local environment. That's when you need an HTTP Server.

Here you have two options:

Create some virtual host using [Apache](http://www.apache.org) or [Nginx](http://www.nginx.com), or
Use the magical power of python: 

```
python -m SimpleHTTPServer
```

Last week, when I was building [something](http://www.scvsoft.com/challenge-accepted) with my friends at [SCV](http://www.scvsoft.com), I had to test if our site looks well. And I used the python solution every time.

The things is, I'm actually working with ruby so I wondered if there is some solution to this problem using ruby. And there is a solution, here is:

```
ruby -run -e httpd . -p 5000
```

This script will start a web server using the current directory as a root and will listen on port 5000.
