module Cartola
  class Sponsor < RestModel
    properties :liga_editorial_id,
               :liga_id,
               :servico_cadun,
               :cor_nome_liga,
               :tipo_ranking,
               :url_link,
               :cards,
               :posicao_inicial,
               :autorizacao_promocao,
               :img_background,
               :img_marca_patrocinador,
               :nome

    def self.find(id)
      self.find_all.find{ |l| l.liga_editorial_id == id.to_s }
    end

    def self.find_all
      response = RestClient.get 'https://api.cartolafc.globo.com/patrocinadores'
      json = JSON.parse response.body
      from_source(json)
    end
  end
end
