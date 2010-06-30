require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rangify', '0.1.0') do |p|
	p.description			= "Combine array elements into ranges."
	p.url							= "http://github.com/monocle/rangify"
	p.author					= "monocle"
	p.email						= "frappez_2000@yahoo.com"
	p.ignore_pattern  = ["tmp/*", "script/*"]
	p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext}
