logentries-hipchat
==================

To run
```console
$ bundle exec rackup config.ru -p 443
```

- [Logentries Webhook Alerts](https://logentries.com/doc/webhookalert/)
- [hipchat gem](https://github.com/hipchat/hipchat-rb)
- [Hipchat API rooms/message](https://www.hipchat.com/docs/api/method/rooms/message)

Logentries Alert
----------------
When creating an Alert in your Logentries account select the "POST me notification" option.
In the field "POST the alert to" enter the location of where your client is running and append /alert to the end of it, eg http://myserver.com/alert.

If you do not have a location to host the library then you can upload the project to Heroku and use the application URL provided by Heroku in the "POST the alert to" field, making sure to append /alert to the URL
