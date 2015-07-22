class Vacation < ActiveRecord::Base
  def vacations_with_desc
    vacaciones = fill_zeros("#{period}")
    "#{vacaciones}/#{year}"
  end


  def fill_zeros(vacaciones)
    "#{vacaciones}".to_s.rjust(2, '0')
  end

end
