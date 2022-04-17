# frozen_string_literal: true

module LogReader
  class FileReader
    def initialize(path)
      @path = path
    end

    def lines
      handle.each.lazy.map(&:chomp)
    end

    private

    def handle
      File.open(@path, "r")
    rescue Errno::ENOENT, Errno::EACCESS => e
      raise LogReader::Error, e.message
    end
  end
end
