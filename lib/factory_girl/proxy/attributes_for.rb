module FactoryGirl
  class Proxy #:nodoc:
    class AttributesFor < Proxy #:nodoc:
      def initialize(klass, callbacks = [])
        super
        @instance = {}
      end

      def get(attribute)
        @ignored_attributes[attribute] || @instance[attribute]
      end

      def set(attribute, value)
        return if attribute.is_a? Attribute::Association

        @instance[attribute.name] = value
      end

      def result(to_create)
        @instance
      end
    end
  end
end
