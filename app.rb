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
    display_content(data)
  end

  def foo
    data = 'I am in foo'
    display_content(data)
  end

  def counter(num)
   display_content(num)
  end
 
  private
    def display_content(data)
      [200, { "Content-Type" => "text/plain", "Content-Length" => data.size.to_s }, [data]]
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
