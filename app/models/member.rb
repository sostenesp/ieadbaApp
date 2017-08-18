class Member < ApplicationRecord
  validates :name, :birth_date, :address, :marital_status, :sex, :cpf, :rg, :profession, :member, :congregated, :role, :ebd, :baptized, :father_name, :mother_name, :congregation, :dizymist, :affiliated_missions, presence: true 
end
