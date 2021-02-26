require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    # binding.pry
    object = Artist.find_or_create_by(name: 'Drake')
    self.artist = object
 
    # array_of_artist=[]
    # Artist.all.each  do |artist_obj|
    #   array_of_artist << artist_obj.name

    # end
    # if !array_of_artist.include?('Drake')
    
    #   new_artist = Artist.create(name: 'Drake')
    #   self.artist = new_artist
 
    # else
    #   self.artist = Artist.find_by(name: 'Drake')
    # end

  end
end