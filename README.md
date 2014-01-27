# Rack Examples

[Rack](https://github.com/rack/rack) provides a minimal interface between webservers supporting Ruby and Ruby frameworks. It is a middleware, which interfaces with your Ruby code to the Webservers.

This repository is dedicated to have all possible ways you can use Rack using your Ruby code, or probably to create your own small web application framework.

For now, this is small and a go to reference on the rack topic for people who want to explore more in the Ruby ecosystem. Feel free to fork and add your knowledge to enlighten others who would want to learn.

## How to use?

Make sure you have rack gem installed onto your system. If not, then run:

    $ gem install rack

then:
    
    $ git clone git@github.com:pramati-ruby-group/rack_examples.git
    $ cd rack_examples
    $ ruby app.rb

or if you wanna see how thin can be run using a .ru file:

    $ thin start -R thin.ru


Open your favorite web browser and go to - localhost:8080(please do check the port number as it may differ on your machine).

So, all you've seen so far is the code ran from app.rb, served onto the browser by the courtesy of Rack handlers for web servers.

## Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo) the project
2. Make one or more well commented and clean commits to the repository. You can make a new branch here if you are modifying more than one part or feature.
3. Add tests for it. This is important so I don’t break it in a future version unintentionally.
4. Perform a [pull request](https://help.github.com/articles/using-pull-requests) in github's web interface.

## License
Copyright (c) 2013 Surya Tripathi, released under the New BSD License.