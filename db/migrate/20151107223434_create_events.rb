class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :desc
    	t.string :url

      t.timestamps
    end
  end
end
