class CreateAccessTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :access_tokens do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.datetime :expires_at
      t.boolean :active

      t.timestamps
    end
  end
end
