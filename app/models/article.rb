#By using this we can communicate with database.
#This class gives us getters ans setters so we can work with individual titles and descriptions.
#Tools we are going to use to do this is rails console.and This tool can be access from command line.

class Article < ApplicationRecord

    validates :title, presence: true , length: {minimum: 6, maximum: 100}
    validates :description , presence: true, length: {mimimum: 10 , maximum:100}
    
end