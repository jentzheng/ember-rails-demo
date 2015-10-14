class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string   :title
      t.string   :type
      t.string   :context
      t.integer  :position
      t.references :assetable, polymorphic: true, index: true
      t.string   :attachment_file_name
      t.string   :attachment_content_type
      t.integer  :attachment_file_size
      t.string   :attachment_fingerprint
      t.text     :metadata
      t.timestamps
      t.timestamps null: false
    end
  end
end
