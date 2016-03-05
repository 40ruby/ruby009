#!/usr/bin/env ruby
# coding: utf-8

require './ruby008-1.rb'

if ARGV.size > 0 then
  open_file(ARGV[ARGV.size - 1])
else
  abort "usage: ${PROGRAM_NAME} <filename>"
end

read_csv.each { |line|
  p line
}

close_file
