class Cliente < ActiveRecord::Base
	attr_accessible :nome, :endereco, :email

  belongs_to :cidade
  has_many :venda
  #  validates_format_of :telefone_contato, :with => /^(\d|\s)*$/
  #validates_format_of :telefone_contato, :with => /[(]\d{2}[)]\s*\d{4}-\d{4}/
  validates_format_of :cpf,  :with => /\d{3}.\d{3}.\d{3}.\d{2}/, :message => "Favo	r colocar no seguinte formato 999.999.999.99"
end

