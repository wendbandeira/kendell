class Cliente < ActiveRecord::Base
  belongs_to :cidade
  has_many :venda
  #  validates_format_of :telefone_contato, :with => /^(\d|\s)*$/
  #validates_format_of :telefone_contato, :with => /[(]\d{2}[)]\s*\d{4}-\d{4}/
  validates_format_of :cpf,  :with => /\d{3}.\d{3}.\d{3}.\d{2}/, :message => "Favor colocar no seguinte formato 999.999.999.99"
end

