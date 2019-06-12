require "sinatra"
require "erb"

def store_name(filename, string)
	File.open(filename, "a+") do |file|
		file.puts(string)
	end
end

def read_names
	return [] unless File.exist?("names.txt")
	File.read("names.txt").split("\n")
end

get "/monstas" do
	@name = params["name"]
	@names = read_names
	store_name("names.txt", @name)
	erb :monstas
end