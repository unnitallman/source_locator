module SourceLocator
  class Dictionary
    def initialize(data)
      @dict = data
    end

    def find(method)
      @dict[method.to_sym]
    end

    def export
    end
  end
end
