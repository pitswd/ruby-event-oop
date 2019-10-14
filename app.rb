require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

test = Event.new("2019-06-04 16:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts test.postpone_24h