#! /usr/bin/env ruby

require 'httparty'

args = ARGV.to_a
if args.length < 2
  puts "USAGE: fetch <path> <singly.field>:<column_name> [...]"
end

puts args.inspect
path = args[0]
puts "Getting #{args[0]}"

map = {}
args[1..-1].each do |field|
  singly, column = field.split(':')
  map[singly] = column
end
puts "Converting #{map.inspect}"

API_HOST = 'https://api.singly.com'

data = HTTParty.get(API_HOST + path, {
  query: {
    access_token: ENV['TOKEN'],
    fields: map.keys.join(',')
  }
})

puts data
