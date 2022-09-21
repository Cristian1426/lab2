class FechaDeNacimiento < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :nacimiento, :date, default: '1900-01-01', null: false 
  end
end
