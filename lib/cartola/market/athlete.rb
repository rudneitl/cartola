module Cartola
  module Market
    class Athlete < RestModel
      properties :atleta_id,
                 :nome,
                 :apelido,
                 :foto,
                 :preco_editorial
    end
  end
end
