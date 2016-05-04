module Cartola
  module Market
    class Shutdown < RestModel
      property :dia, type: Integer
      property :mes, type: Integer
      property :ano, type: Integer
      property :hora, type: Integer
      property :minuto, type: Integer

      def to_datetime
        DateTime.serialize(prepare_serialize)
      end

      private

      def prepare_serialize
        "#{ano}-#{mes}-#{dia} #{hora}:#{minuto}:00"
      end
    end
  end
end
