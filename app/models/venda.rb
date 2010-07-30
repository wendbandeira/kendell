class Venda < ActiveRecord::Base
  belongs_to :produto
  belongs_to :funcionario
  belongs_to :cliente
end

