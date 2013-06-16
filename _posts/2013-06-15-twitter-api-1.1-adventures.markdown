---
layout: post
title: Twitter API 1.1 Adventures
---

On June 11th, Twitter decided to [close the API v1](https://dev.twitter.com/blog/api-v1-is-retired) and start using the new V1.1. So far, so good...a new version of an API, new features, what could go wrong?

The thing is this new API validates every call using OAuth, and here is where my adventure begins...Picture yourself developing a static website, yes, only HTML and javascript code to retrieve some data from the internet, for example using [Google docs parser](https://bitbucket.org/ideasagiles/google-docs-simple-parser/wiki/Home) to get data from a google spreadsheet. 

Now imagine that you want to get the latest tweets from you account to show on your website. Piece of cake! just fetch the user_timeline from twitter and render it on your website...well, that WAS a piece of cake when you can use V1; on V1.1 you need to use your OAuth credentials to access to this data. Using your OAuth credentials on your server is OK, nobody see your secret key...using your OAuth credentials using javascript is not a good idea, in fact is a Really bad idea.

How can I, a humble adventurer, keep developing the site statically and still fetch the latests tweets?

Unix (or in this case Linux) is the answer. My idea was to create a cron that fetch the latests tweets every X minutes, and write the result in a file accesible by the server (in my example latest_tweets.json). Then I get the information from this file using ajax and voilá!

Thanks to [a post](https://dev.twitter.com/discussions/14460) I found on the twitter forum I can write the script in no time.

But Fear not the new twitter API! If you are also an adventurer trapped in this very same situation, you can take a look at [my script](https://github.com/gianu/latest_tweet://github.com/gianu/latest_tweets) and use it to walk in the forest of the REST without fear.
