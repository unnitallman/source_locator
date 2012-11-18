module SourceLocator
  class Dictionary
    def initialize(data, dump_file)
      @dict = data
    end

    def find(method)
      @dict[method.to_sym]
    end

    def export
      File.open(dump_file) do |f|
        f.puts @dict.to_yaml
      end
    end
  end
end
