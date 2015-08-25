class Incident < ActiveRecord::Base
  def incident_with_desc
    incidencia_num = fill_zeros("#{cod}")
    "#{incidencia_num} - #{name}"
  end


  def fill_zeros(incidencia_num)
    "#{incidencia_num}".to_s.rjust(2, '0')
  end
end
