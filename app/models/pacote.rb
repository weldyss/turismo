class Pacote < ActiveRecord::Base
  has_many :cidades, :through => :trajetos
end
