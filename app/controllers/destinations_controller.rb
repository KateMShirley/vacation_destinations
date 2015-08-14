class DestinationsController < ApplicationController

  #get
  def index
      #render a list...give a form to checkoff a vacay
  end
  #get
  def new
    # displays a form to create a new destination
  end
  #post
  def create
    #handle the form submission and add to database
  end
  #post
  def update
    #lets a user check off a vacay from index
  end
  #patch
  def delete
    #lets a user delete a vacation if they have NOT checked it off. Else they can't. because you've already been there
  end

#get 
  def confirmation
    #catch-all confirmation
  end
end
