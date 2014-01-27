require "erb"

class App
  def initialize
  end
  
  def call(env)
    puts env['PATH_INFO'].inspect
    if env['PATH_INFO'] == '/'
      root
    elsif env['PATH_INFO'] == '/foo'
      foo
    elsif env['PATH_INFO'].include?('count')
      counter(env['PATH_INFO'].split('/').last)
    end
  end

  def root
    data = Time.now.to_s
    respond(data)
  end

  def foo
    data = 'I am in foo'
    respond(data)
  end

  def counter(num)
    respond(num)
  end
 
  private
    def respond(content, error_code: 200, content_type: "text/html")
      html_content = content_type == "text/html" ? process_html(content) : content
      [error_code, {"Content-Type" => content_type, "Content-Length" => html_content.size.to_s }, [html_content]]
    end

    def process_html(content)
      @content = content
      filename = 'app.html.erb'   # @content is used in app.html.erb
      erb = ERB.new(File.read(filename))
      erb.def_method(App, 'render(content)', filename)
      self.render(content)
    end
end

# assuming rack and webrick/thin installed
if $0 == __FILE__
  require 'rack'
  if defined?(Rack::Handler::Thin)
    Rack::Handler::Thin.run App.new
  elsif defined?(Rack::Handler::WEBrick)
    Rack::Handler::Thin.run App.new
  else
    puts 'Can not find thin or webrick on your system. Please run gem install thin before running this program'
  end   
end
