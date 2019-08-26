class Application 
    def call(env)
        resp = Rack::Response.new
        Now = Time.now
        if Now.hour <= 12
            resp.write "Good Morning"
        else 
            resp.write "Good Afternoon"
        end
        resp.finish
    end
end
