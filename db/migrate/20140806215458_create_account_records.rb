class CreateAccountRecords < ActiveRecord::Migration
  def change
    create_table :account_records do |t|
      t.integer :account_id
      t.decimal :amount
      t.date :date
      t.text :description
      t.string :record_type
      t.timestamps
    end
  end
end
