module SourceLocator
  class ClassLoader

    def build
      h = Hash.new

      all_classes.map do |c|
        c.instance_methods.each do |m|
          h[m] ||= []
          s = c.instance_method(m).source_location
          h[m] << s if s
        end

        c.public_methods.each do |m|
          h[m] ||= []
          s = c.method(m).source_location
          h[m] << s if s
        end
      end
      h
    end

    private
    def all_classes
      Object.constants.map {|c| Object.const_get(c)}.select {|c| c.is_a? Class}
    end

  end
end
