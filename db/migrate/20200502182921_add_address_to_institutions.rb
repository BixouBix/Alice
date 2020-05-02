class AddAddressToInstitutions < ActiveRecord::Migration[5.2]
  def change
    add_column :institutions, :city, :string
    add_column :institutions, :state, :string
    add_column :institutions, :country, :string
    add_column :institutions, :pc, :string
    add_column :institutions, :address_line_1, :string
    add_column :institutions, :address_line_2, :string
    remove_column :institutions, :address, :jsonb
  end
end
