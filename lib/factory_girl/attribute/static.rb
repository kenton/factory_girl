module FactoryGirl
  class Attribute #:nodoc:

    class Static < Attribute  #:nodoc:

      attr_reader :value

      def initialize(name, value, ignored)
        super(name, ignored)
        @value = value
      end

      def to_proc(proxy)
        value = @value
        lambda { value }
      end

      def ==(another)
        self.name == another.name &&
          self.value == another.value &&
          self.ignored == another.ignored
      end
    end
  end
end
