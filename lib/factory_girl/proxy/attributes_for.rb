module FactoryGirl
  class Proxy #:nodoc:
    class AttributesFor < Proxy #:nodoc:
      def set(attribute, value)
        return if attribute.is_a? Attribute::Association
        super
      end

      def result(to_create)
        @instance.object
      end
    end
  end
end
