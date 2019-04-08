class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.references :customer, foreign_key: true
      t.references :product, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
