class Pacote < ActiveRecord::Base
  has_many :cidades, :through => :trajetos
  has_many :trajetos
end
