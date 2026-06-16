class AddPublicToPeriodicals < ActiveRecord::Migration[5.0]
  def change
    add_column :periodicals, :public, :boolean, null:false, default:false
  end
end
