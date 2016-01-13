class CreateUrlShortenerUrlShorteners < ActiveRecord::Migration
  def change
    create_table :url_shortener_url_shorteners , id: false do |t|
      t.string :url , null: false
      t.string :url_short, :limit => 5 , null: false
      t.timestamps
    end
    add_index :url_shortener_url_shorteners, :url, :unique => true
    add_index :url_shortener_url_shorteners, :url_short, :unique => true
  end
end
