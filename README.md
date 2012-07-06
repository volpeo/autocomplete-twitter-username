# autocomplete-twitter-username

This is a little Rails demo that show how to perform an autocomplete on the username of the followings of an user like in tweetdeck or twitter.com itself.
It'll be used on a little project of mine named [nestweet.com](http://nestweet.com).

## Demo

You can try this demo at: [http://autocomplete-twitter-username.herokuapp.com/](http://autocomplete-twitter-username.herokuapp.com/)

## How does it works ?

* It simply do a [GET followers/ids](https://dev.twitter.com/docs/api/1/get/followers/ids) request on the twitter API and return an array of ids.

* And then it slice the array in as many array of 100 ids it coulds and thanks to the [GET users/lookup](https://dev.twitter.com/docs/api/1/get/users/lookup) request, retrieve all the information we need (username and realname).

* Then it passes it to the javascript magic [jQuery UI Autocomplete](http://jqueryui.com/demos/autocomplete/).

## Know a better way ?
If you know a more elegant way to achieve this, please don't hesitate to discuss !

## Author

[@volpeo](http://twitter.com/volpeo)