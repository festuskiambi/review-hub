class AddCommentToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :comment, :text
  end
end
