module SourceLocator
  class Dictionary
    def initialize(data, dump_file)
      @dict = data
      @dump_file = dump_file
    end

    def find(method)
      @dict[method.to_sym]
    end

    def export
      File.open(@dump_file, 'w+') do |f|
        Marshal.dump(@dict, f)
      end
    end
  end
end
