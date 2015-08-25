class Capture < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :incident
  belongs_to :user
  belongs_to :vacation
  belongs_to :qna
  
 
end
