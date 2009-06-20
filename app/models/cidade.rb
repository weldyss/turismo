class Cidade < ActiveRecord::Base

  has_many :hotels
  has_many :locals

end
