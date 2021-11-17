class CreatePhomes < ActiveRecord::Migration[6.0]
  def change
    create_table :phomes do |t|
      t.text :desc

      t.timestamps
    end
  end
end
