class CocktailsController < ApplicationController
    def index
        @cocktails = Cocktail.all
        @phrases = ["Frank Sinatra said, 'Alcohol may be man's worst enemy, but the Bible says love your enemy.'",
         "Irish Quote:'When we drink, we get drunk. When we get drunk, we fall asleep. When we fall asleep, we commit no sin. When we commit no sin, we go to Heaven. So, let's all get drunk and go to heaven.'", 
         "Irish Quote:'What butter or whiskey does not cure cannot be cured.'", 
         "Irish Quote:'May you always have a clean shirt, A clear conscience,And enough coins in your pocket to buy a pint.'", 
         "Sergei Lukyanenko: 'It's about waking up in the morning with everything around you looking gray. Gray sky, gray sun, gray city, gray people, gray thoughts. And the only way out is to have another drink. Then you feel better. Then the colors come back.'"
        ].sample
    end
    def show
        @cocktail = Cocktail.find(params[:id])
    end
    def new
        @cocktail = Cocktail.new
    end

    def create
        @cocktail = Cocktail.new(cocktail_params)
        @cocktail.save
    
        # no need for app/views/cocktails/create.html.erb
        redirect_to cocktail_path(@cocktail)
      end
    
      private
    
      def cocktail_params
        params.require(:cocktail).permit(:name)
      end
    
end
