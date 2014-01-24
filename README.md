# Rack Examples

[Rack](https://github.com/rack/rack) provides a minimal interface between webservers supporting Ruby and Ruby frameworks. It is a middleware, which interfaces with your Ruby code to the Webservers.

This repository is dedicated to have all possible ways you can use Rack using your Ruby code, or probably to create your own little web applciation frramework.

## How to use?

Make sure you have rack gem installed onto your system. If not, then run:

    $ gem install rack

then:
    
    $ git clone git@github.com:pramati-ruby-group/rack_examples.git
    $ cd rack_examples
    $ ruby app.rb

or if you wanna see how thin can be run using a .ru file:

    $ thin start -R thin.ru

## Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo) the project
2. Make one or more well commented and clean commits to the repository. You can make a new branch here if you are modifying more than one part or feature.
3. Add tests for it. This is important so I don’t break it in a future version unintentionally.
4. Perform a [pull request](https://help.github.com/articles/using-pull-requests) in github's web interface.

## License
Copyright (c) 2013 Surya Tripathi, released under the New BSD License.