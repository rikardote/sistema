class Empleado < ActiveRecord::Base
  
  belongs_to :departamento
  belongs_to :puesto
  has_one :centro, through: :departamento 
  has_many :captures
  
  
  def self.search(query)
    where("num_empleado like ?", "%#{query}%")
  end
  
scope :ordenado, ->{ order("num_empleado ASC") }
end
