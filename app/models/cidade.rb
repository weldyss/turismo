class Cidade < ActiveRecord::Base
  has_many :pacotes, :through => :trajetos
  has_many :hotels

end
