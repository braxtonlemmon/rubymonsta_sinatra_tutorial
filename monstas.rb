require "sinatra"
require "erb"

get "/monstas" do
	@name = params["name"]
	erb :monstas
end