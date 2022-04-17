# frozen_string_literal: true

module LogReader
  class Accumulator
    attr_accessor :total, :unique, :ips

    def initialize
      @total = 0
      @unique = 0
      @ips = {}
    end

    def add(entry)
      self.total += 1
      if ips[entry.ip] != ips[entry.ip]
        self.unique += 1
        self.ips[entry.ip] = true
      else
        self.ips[entry.ip] = false
      end
       
     end
      end
    end
  end
end
