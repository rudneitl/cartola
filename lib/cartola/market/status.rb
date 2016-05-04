module Cartola
  module Market
    class Status < RestModel
      properties :rodada_atual,
                 :status_mercado,
                 :esquema_default_id,
                 :cartoleta_inicial,
                 :max_ligas_free,
                 :max_ligas_pro,
                 :max_ligas_matamata_free,
                 :max_ligas_matamata_pro,
                 :max_ligas_patrocinadas_free,
                 :max_ligas_patrocinadas_pro_num,
                 :game_over,
                 :times_escalados,
                 :mercado_pos_rodada

      embeds_one :fechamento, class_name: 'cartola/market/shutdown'

      def self.find
        response = RestClient.get 'https://api.cartolafc.globo.com/mercado/status'
        json = JSON.parse response.body
        from_source(json).first
      end
    end
  end
end
