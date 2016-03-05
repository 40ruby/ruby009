#!/usr/bin/env ruby
# coding: utf-8

require './ruby008-3.rb'

if ARGV.size > 0 then
  fp = File_test.new(ARGV[ARGV.size - 1])
else
  abort "usage: ${PROGRAM_NAME} <filename>"
end

fp.read.each { |line|
  p line
}

fp.close
