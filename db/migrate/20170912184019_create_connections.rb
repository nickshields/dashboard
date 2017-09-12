class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.column :name, :string
      t.column :created_at, :timestamp
    end

    Connection.create :name => "wired"
    Connection.create :name => "wireless"

  end
end
