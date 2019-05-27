class CreateRfpAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :rfp_answers do |t|
      t.string :answer
      t.references :rfp_request, foreign_key: true

      t.timestamps
    end
  end
end
