module SourceLocator
  class Locater
    def initialize(storage, method_to_find)
      @storage = storage
      @method_to_find = method_to_find
    end

    def find
      @storage.find(@method_to_find) || []
    end
  end
end
