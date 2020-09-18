class DosesController < ApplicationController
    def new
        @cocktail = Cocktail.find(params[:cocktail_id].to_i)
        @dose = Dose.new
        @ingre = []
        a = Ingredient.all
        a.each do |ing|
            @ingre << [ing.name, ing.id]
        end
    end
    
    
    def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
    
        # no need for app/views/cocktails/destroy.html.erb
        redirect_to cocktails_path
      end

      def create
        @dose = Dose.new(dose_params)
        # we need `cocktail_id` to associate dose with corresponding cocktail
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose.cocktail = @cocktail
        if @dose.save
          redirect_to cocktail_path(@cocktail)
        else
            render :new
        end
      end
    
      private
    
      def dose_params
        params.require(:dose).permit(:description, :ingredient_id)
      end
end
