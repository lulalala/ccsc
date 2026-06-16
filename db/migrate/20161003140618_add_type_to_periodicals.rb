class AddTypeToPeriodicals < ActiveRecord::Migration[5.0]
  def change
    add_column :periodicals, :type, :string, after: :id
    Periodical.reset_column_information
    Periodical.update_all(type: "Fountain")
    Periodical.reset_column_information
  end
end
