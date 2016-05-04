module Cartola
  module Market
    class Highlight < RestModel
      properties :escalacoes,
                 :clube,
                 :escudo_clube,
                 :posicao

      embeds_one :atleta, class_name: 'cartola/market/athlete', start_key: 'Atleta'

      def self.find_all
        response = RestClient.get 'https://api.cartolafc.globo.com/mercado/destaques'
        json = JSON.parse response.body
        from_source(json)
      end
    end
  end
end
