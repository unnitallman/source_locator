module SourceLocator
  class Dictionary
    def all_classes
      Object.constants.map {|c| Object.const_get(c)}.select {|c| c.is_a? Class}
    end

    def build
      @dict = {}
      all_classes.map{ |c|
        c.instance_methods.each do |m|
          @dict[m] ||= []
          s = c.instance_method(m).source_location
          @dict[m] << s if s
        end

        c.public_methods.each do |m|
          @dict[m] ||= []
          s = c.method(m).source_location
          @dict[m] << s if s
        end
      }
    end

    def find(method)
      @dict[method.to_sym]
    end

  end
end
