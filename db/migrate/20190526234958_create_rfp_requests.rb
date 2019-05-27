class CreateRfpRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :rfp_requests do |t|
      t.string :question

      t.timestamps
    end
  end
end
