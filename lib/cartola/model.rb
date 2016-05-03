module Cartola
  class Model < RestModel
    def self.config
      Cartola::Configuration
    end

    def self.query
      create_query
    end
  end
end
