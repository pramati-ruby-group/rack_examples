app = proc do |env|
        time = Time.now.to_s	
      	[200, # response code
      	 { "Content-Type" => "text/plain", "Content-Length" => time.size.to_s }, # request header
      	 [time] # data in an array
      	 ]
      end

use Rack::CommonLogger

run app
