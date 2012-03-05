class Itemservico < ActiveRecord::Base
  belongs_to :mecanico
  belongs_to :servico
end
