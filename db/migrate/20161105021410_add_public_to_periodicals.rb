class AddPublicToPeriodicals < ActiveRecord::Migration
  def change
    add_column :periodicals, :public, :boolean, null:false, default:false
  end
end
