# Link Bookmarking & Voting Sample App - Rails Edition

Let's you:

- Post links
- Vote links up or down
- Sort links by the newest or hot



### Setup 'n' Run

Setup the database, that is, `links.sqlite3`. Issue the command:

    $ rake db:setup    # db:create db:migrate db:seed

Ready to roll. Issue the command:

    $ rails s

### Running w/ Embedded Jetty Java Web Server

Zip up as Java web archive (`.war`) using `warble` tool. Issue the command:

    $ warble

Ready to roll. Issue the command:

    $ java -cp .;./jetty-webapp-7.x.jar AppServer

### History

Initialy Based on Sinatra Version [(Article)](http://www.drurly.com/blog/2012/06/05/build-reddit-in-sinatra)