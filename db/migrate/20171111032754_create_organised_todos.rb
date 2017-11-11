class CreateOrganisedTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :organised_todos do |t|
      t.references :todoable, polymorphic: true
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
