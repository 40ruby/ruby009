#!/usr/bin/env ruby
# coding: utf-8

class File_CSV

  def initialize(filename)
    begin
      @fp = File.open(filename)
    rescue => e
      abort "#{e.class} => #{e.message}"
    end
  end

  def read
    csv = @fp.each_line.map { |line|
      line.chop.split(',')
    }

    return csv
  end

  def close
    @fp.close
  end
end

class File_TSV

  def initialize(filename)
    begin
      @fp = File.open(filename)
    rescue => e
      abort "#{e.class} => #{e.message}"
    end
  end

  def read
    csv = @fp.each_line.map { |line|
      line.chop.split(' ')
    }

    return csv
  end

  def close
    @fp.close
  end
end
