# API

A REST API built with Ruby on Rails and MySQL.

The application is hosted on [heroku](educruby.herokuapp.com) and has the following end points 


  - educruby.herokuapp.com/type1 
  
    This returns a json containing a list of 10 elements having a head and content key 
  - educruby.herokuapp.com/type2/?num=
  
      This end point returns additional content for a given div which can be obtained by making ajax requests to the same

# WebView

The client side is implemented using angularjs

It is contained inside the webview folder and is hosted [here](http://educ-int-proj.bitballoon.com/)



### Tech

Dillinger uses a number of open source projects to work properly:

* [AngularJS](http://angularjs.org)
* [Ruby on Rails](rubyonrails.org/)
* [jQuery](<http://jquery.com>)
* [Foundation CSS](foundation.zurb.com)



### Installation





```sh
$ git clone https://github.com/namitjuneja/rubyAPI.git
$ cd rubyAPI
$ bundle install
$ rails server
```


   
###### Made by 
[Namit Juneja](www.namitjuneja.com)


