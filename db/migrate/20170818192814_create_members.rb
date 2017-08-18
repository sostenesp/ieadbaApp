class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :birth_date, :limit => 10
      t.string :address
      t.string :complement
      t.string :phone, :limit => 15
      t.string :cell_phone, :limit => 10
      t.string :marital_status, :limit => 15
      t.string :conjugate
      t.string :sex, :limit => 10
      t.string :cpf
      t.string :rg, :limit => 20
      t.string :profession, :limit => 150
      t.string :workplace, :limit => 150
      t.string :member, :limit => 6
      t.string :congregated, :limit => 6
      t.string :water_baptism_date, :limit => 10
      t.string :role, :limit => 20
      t.string :ebd, :limit => 6
      t.string :baptized, :limit => 6
      t.string :date_baptism, :limit => 10
      t.string :father_name
      t.string :mother_name
      t.string :congregation, :limit => 50
      t.string :dizymist, :limit => 6
      t.string :affiliated_missions, :limit => 6
      t.text :description, :limit => 500

      t.timestamps
    end
  end
end
