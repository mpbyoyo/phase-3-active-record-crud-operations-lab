class Movie < ActiveRecord::Base  
  def self.create_with_title(str)
    Movie.create(title: str)
  end

  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    Movie.all.count
  end

  def self.find_movie_with_id(id)
    Movie.find_by(id: id)
  end

  def self.find_movie_with_attributes(attr)
    Movie.find_by(attr)
  end

  def self.find_movies_after_2002
    Movie.all.filter {|i| i[:release_date] > 2002}
  end

  def update_with_attributes(attr)
    self.update(attr)
  end

  def self.update_all_titles(str)
    Movie.update_all(title: str)
  end

  def self.delete_by_id(id)
    Movie.destroy_by(id: id)
  end

  def self.delete_all_movies
    Movie.destroy_all
  end
end