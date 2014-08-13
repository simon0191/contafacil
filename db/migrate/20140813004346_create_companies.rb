class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :nit
      t.text :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
