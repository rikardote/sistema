class Departamento < ActiveRecord::Base
  belongs_to :centro
  has_many :empleados
end
