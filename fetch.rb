#! /usr/bin/env ruby

args = ARGV.to_a
if args.length < 2
  puts "USAGE: fetch <path> <singly.field>:<column_name> [...]"
end
puts args.inspect
puts "Getting #{args[0]}"
map = {}
args[1..-1].each do |field|
  singly, column = field.split(':')
  map[singly] = column
end
puts "Converting", map.inspect
