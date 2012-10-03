#! /usr/bin/env ruby

require 'csv'
require 'httparty'

args = ARGV.to_a
if args.length < 2
  puts "USAGE: fetch <path> <singly.field>:<column_name> [...]"
end

path = args[0]
$stderr.puts "Getting #{args[0]}"

map = {}
args[1..-1].each do |field|
  singly, column = field.split(':')
  map[singly] = column
end
$stderr.puts "Converting #{map.inspect}"

API_HOST = 'https://api.singly.com'

data = HTTParty.get(API_HOST + path, {
  :query => {
    :access_token => ENV['TOKEN'],
    :fields       => map.keys.join(','),
    :limit        => 5000
  }
})

out = CSV.generate(:col_sep => "\t") do |csv|
  columns = map.keys
  csv << columns.map{|col| map[col]}
  data.each do |datum|
    csv << columns.map{|col| datum[col]}
  end
end
puts out
