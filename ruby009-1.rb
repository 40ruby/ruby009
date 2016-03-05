#!/usr/bin/env ruby
# coding: utf-8

def open_file(filename)
  begin
    $fp = File.open(filename)
  rescue => e
    abort "#{e.class} => #{e.message}"
  end
end

def read_csv()
  csv = $fp.each_line.map { |line|
    line.chop.split(',')
  }

  return csv
end


def close_file()
  $fp.close
end

