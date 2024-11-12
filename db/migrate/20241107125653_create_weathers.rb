class CreateWeathers < ActiveRecord::Migration[7.0]
  def change
    create_table :weathers do |t|
      t.string :current_temperature
      t.string :string
      t.string :zipcode

      t.timestamps
    end
  end
end
