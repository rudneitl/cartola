module Cartola
  class Round < RestModel
    properties :rodada_id,
               :inicio,
               :fim

    def self.find(id)
      self.find_all.find{ |r| r.rodada_id == id.to_s }
    end

    def self.find_all
      response = RestClient.get 'https://api.cartolafc.globo.com/rodadas'
      json = JSON.parse response.body
      from_source(json)
    end
  end
end
