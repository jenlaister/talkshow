class CreateAppearance < ActiveRecord::Migration

  def change
    create_table :appearances do |t|
      t.integer :guest_id
      t.integer :episode_id
    end
  end

end
