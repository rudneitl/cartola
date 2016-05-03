module Cartola
  class Matches < RestModel
    property :rodada
    embeds_many :partidas, class_name: Cartola::Match

    def self.find_all
      response = RestClient.get 'https://api.cartolafc.globo.com/partidas'
      json = JSON.parse response.body
      from_source(json)
    end
  end
end
