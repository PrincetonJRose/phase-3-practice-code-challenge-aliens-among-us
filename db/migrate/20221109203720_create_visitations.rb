class CreateVisitations < ActiveRecord::Migration[7.0]
  def change
    create_table :visitations do |t|
      t.string      :string
      t.belongs_to  :alien
      t.belongs_to  :earthling

      t.timestamps
    end
  end
end
