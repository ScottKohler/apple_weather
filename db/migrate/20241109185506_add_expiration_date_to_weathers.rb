#rails g migration add_expiration_date_to_weathers expire_date:datetime
# rails db:migrate:status

class AddExpirationDateToWeathers < ActiveRecord::Migration[7.0]
  def change
    add_column :weathers, :expire_date, :datetime
  end
end
