class Doubleshot
  class Dependencies
    class Dependency
      attr_reader :name

      def initialize(name)
        @name = name.dup.freeze
      end

      def eql?(other)
        other.is_a?(self.class) and other.name == @name
      end

      def hash
        @hash ||= @name.hash
      end

      def ==(other)
        eql?(other)
      end

      def to_s
        @name
      end
    end
  end
end