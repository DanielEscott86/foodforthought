class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @cuisines = Cuisine.all
  end

  def about
  end

  def contact
      #current_user.update_attribute :admin, true
  end
  
  def cuisine
      cui = params[:title]
      @recipes = Recipe.where("cuisine like ?", cui,)
  end
  
  def profile
      
      @user = User.find(current_user.id)
      @recipes = @user.recipes.all
      #@recipes = current_user.recipies
      #@recipies = Recipe.all.where(:user_id == current_user.id)
      #@users = User.all
  end
  
  def user
      @users = User.all
  end
  def makeadmin
      @user = User.find_by(id: params[:id])
        @user.update_attribute(:admin, true)
        redirect_to "/"
      
  end 
  
  def removeadmin
      @user = User.find_by(id: params[:id])
        @user.update_attribute(:admin, false)
        redirect_to "/"
  end
end
