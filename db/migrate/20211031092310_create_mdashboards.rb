class CreateMdashboards < ActiveRecord::Migration[6.0]
  def change
    create_table :mdashboards do |t|
      t.text :desc

      t.timestamps
    end
  end
end
