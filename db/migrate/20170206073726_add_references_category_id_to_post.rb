class AddReferencesCategoryIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :category, foreign_key: true,default:1
  end
end
