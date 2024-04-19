class AddTrailerToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :trailer, :string
  end
end
