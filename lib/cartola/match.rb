module Cartola
  class Match < RestModel
    properties :clube_casa_id,
               :clube_casa_posicao,
               :aproveitamento_mandante,
               :clube_visitante_id,
               :clube_visitante_posicao,
               :aproveitamento_visitante,
               :partida_data,
               :local,
               :valida,
               :placar_oficial_mandante,
               :placar_oficial_visitante,
               :url_confronto,
               :url_transmissao
  end
end
