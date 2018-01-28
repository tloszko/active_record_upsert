module Arel
  module Nodes
    class OnConflict < Node
      attr_accessor :index_predicate, :target, :action

      def initialize
        super
        @target = nil
        @action = nil
        @index_predicate = nil
      end

      def hash
        [@target, @index_predicate, @action].hash
      end

      def eql? other
        self.class == other.class &&
          self.target == other.target &&
          self.index_predicate == other.index_predicate &&
          self.update_statement == other.update_statement
      end
    end
  end
end
