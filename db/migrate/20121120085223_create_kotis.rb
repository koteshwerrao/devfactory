class CreateKotis < ActiveRecord::Migration
  def change
    create_table :kotis do |t|

      t.timestamps
    end
  end
end
