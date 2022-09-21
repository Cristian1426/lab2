class AgregarPrivacidad < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :privada, :boolean, default: false
  end
end
