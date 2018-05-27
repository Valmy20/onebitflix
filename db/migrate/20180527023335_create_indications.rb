class CreateIndications < ActiveRecord::Migration[5.2]
  def change
    create_table :indications do |t|
      t.references :user, foreign_key: true
      t.references :indicatable, polymorphic: true

      t.timestamps
    end
  end
end
