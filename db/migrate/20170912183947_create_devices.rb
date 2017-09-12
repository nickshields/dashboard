class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.column :name, :string
      t.column :ip_address, :string
      t.column :mac_address, :string
      t.column :connection_id, :integer
      t.column :created_at, :timestamp
    end
  end
end
