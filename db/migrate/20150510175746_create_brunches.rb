class CreateBrunches < ActiveRecord::Migration
  def change
    create_table :brunches do |t|
      t.string :name
    	t.string :address
    end
  end
end
