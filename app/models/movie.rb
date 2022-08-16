class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.find(year: year)
    end

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id_find)
        Movie.find_by(id: id_find)
    end

    def find_movie_with_attributes(attr)
    
    end

    def self.find_movies_after_2002
        Movie.where('release_date >': 2002)
    end

    def update_with_attributes(update_attr)
        update(update_attr)
    end
    def self.update_all_titles(new_title)
        Movie.update(title: new_title)
    end

    def self.delete_by_id(id)
        Movie.find_by(id: id).destroy
    end
    def self.delete_all_movies
        Movie.destroy_all
    end


end