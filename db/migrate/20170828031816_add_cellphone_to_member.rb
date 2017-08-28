class AddCellphoneToMember < ActiveRecord::Migration[5.1]
  def change
    change_column :members, :cell_phone, :string , :limit => 15
  end
end
