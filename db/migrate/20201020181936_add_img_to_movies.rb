class AddImgToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :img, :string
  end
end
