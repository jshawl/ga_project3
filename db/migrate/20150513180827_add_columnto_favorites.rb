class AddColumntoFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :rating, :string
    add_column :favorites, :reviews, :string
    add_column :favorites, :address, :string
    add_column :favorites, :phone, :string
  end
end
