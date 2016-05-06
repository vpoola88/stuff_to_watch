class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string   :title
      t.string   :year
      t.string   :rated
      t.string   :released
      t.string   :runtime
      t.string   :genre
      t.string   :director
      t.string   :writer
      t.string   :actors
      t.string   :plot
      t.string   :poster
      t.string   :media_type
      t.string   :imdb_id
      t.integer  :season, default: nil
      t.integer  :points
      t.integer  :show_id

      t.timestamps null: false
    end
  end
end
