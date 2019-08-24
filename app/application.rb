require 'date'

class Application
 
    def call(env)
    # date = DateTime.now
    time = Time.new
      resp = Rack::Response.new
   
      num_1 = Kernel.rand(1..20)
      num_2 = Kernel.rand(1..20)
      num_3 = Kernel.rand(1..20)

      # You could write logic wherein if its PM, it must be afternoon.  If its AM, its morning.

   
    #   resp.write time.strftime("%p")
      if time.strftime("%p") == "PM"
        resp.write "Good Afternoon!"
      else time.strftime("%p") == "AM"
        resp.write "Good Morning!"
      end
   
      resp.finish
    end
   
  end