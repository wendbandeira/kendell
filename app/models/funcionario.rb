class Funcionario < ActiveRecord::Base
  belongs_to :cargo
  belongs_to :cidade
  has_many :venda
end

