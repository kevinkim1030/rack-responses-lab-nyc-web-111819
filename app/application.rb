class Application

    def call(env)
        resp = Rack::Response.new

        time_now = Time.now.hour
        if time_now < 12
            resp.write "good morning"
        else 
            resp.write "good afternoonn"
        end
        resp.finish
    end
end