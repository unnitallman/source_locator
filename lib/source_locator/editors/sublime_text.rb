module SourceLocator
  module Editors
    class SublimeText
      def open(args)
        args.each do |arg|
          path        = arg[0]
          line_number = arg[1]

          `subl #{path}:#{line_number}`
        end
      end
    end
  end
end
