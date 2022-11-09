class ChangeColumnNameInVisitationsFromStringToDate < ActiveRecord::Migration[7.0]
  def change
    rename_column :visitations, :string, :date
  end
end
