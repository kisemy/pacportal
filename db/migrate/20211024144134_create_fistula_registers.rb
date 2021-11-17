class CreateFistulaRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :fistula_registers do |t|
      t.text :Name
      t.text :Location
      t.text :Region
      t.text :Marital_status
      t.text :Telephone
      t.text :Next_of_Kin

      t.timestamps
    end
  end
end
