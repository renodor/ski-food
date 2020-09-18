class AddTranslationsToDish < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        Dish.create_translation_table!({
          :name => :string,
          :description => :text,
          :ingredients => {:type => :text, array: true, default: []}
        }, {
          :migrate_data => true,
          :remove_source_columns => true
        })
      end

      dir.down do
        Dish.drop_translation_table! :migrate_data => true
      end
    end
  end
end
