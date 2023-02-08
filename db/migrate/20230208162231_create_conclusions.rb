class CreateConclusions < ActiveRecord::Migration[7.0]
  def change
    create_table :conclusions do |t|
      t.text :context
      t.string :conclusion

      t.timestamps
    end
  end
end
