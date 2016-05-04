module Cartola
  class Team < RestModel
    id
    properties :nome,
               :abreviacao,
               :posicao

    def self.find(id)
      response = RestClient.get 'https://api.cartolafc.globo.com/clubes'
      json = JSON.parse response.body
      from_source(json[id.to_s])
    end

    def self.find_by_name(name)
      self.find_all.find{ |t| t.nome == name }
    end

    def self.find_by_abbreviation(abbreviation)
      self.find_all.select{ |t| t.abreviacao == abbreviation }
    end

    def self.find_all
      response = RestClient.get 'https://api.cartolafc.globo.com/clubes'
      json = JSON.parse response.body
      from_source(json.values)
    end
  end
end
