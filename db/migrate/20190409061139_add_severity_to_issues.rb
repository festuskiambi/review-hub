class AddSeverityToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :severity, :string
  end
end
