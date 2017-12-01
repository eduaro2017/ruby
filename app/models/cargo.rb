class Cargo < ActiveRecord::Base
  validates :cargo, presence: true
  validates :salario, presence: true 


end
