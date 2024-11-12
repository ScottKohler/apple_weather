# rails g migration RemoveStringFromWeathers

class RemoveStringFromWeathers < ActiveRecord::Migration[7.0]
  def change
    remove_column :weathers, :string, :string
  end
end

