class Member < ApplicationRecord
  has_attached_file :avatar, styles: { normal: "130x130", photo: "90x120", thumb: "80x80>", mini: "23x23" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :name, :birth_date, :address, :marital_status, :sex, :cpf, :rg, :member, :congregated, :role, :ebd, :baptized, :father_name, :mother_name, :congregation, :dizymist, :affiliated_missions, presence: true 
end
