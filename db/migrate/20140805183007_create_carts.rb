class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
<<<<<<< HEAD
      t.integer :user_id
      t.string :status, default: 'not submitted'
=======
>>>>>>> 7c6a5a51a91248577dc1764ed62b8f67c87acde7
    end
  end
end
