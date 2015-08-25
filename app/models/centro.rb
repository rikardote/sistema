class Centro < ActiveRecord::Base
  
  has_many :departamentos
  has_many :empleados, through: :departamentos
  

  def name_with_desc
    centro_num = fill_zeros("#{centro_iden}")
    "#{centro_num} - #{centro_descripcion}"
  end
  

  def fill_zeros(centro_num)
    "#{centro_num}".to_s.rjust(5, '0')
  end

end
