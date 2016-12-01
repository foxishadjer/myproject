class DemandesController < ApplicationController
before_action :find_demande, only: [:edit, :update, :destroy]
	def index
		 
	end

	def new
		@demande = Demande.new
	end

	def create
		@demande = Demande.new(demande_params)
		if @demande.save
			redirect_to @demande
		else
			render "New"
		end
	end

	def show
		@demande = Demande.find(params[:id])
		/@dem=Demandeur.find(5)/
		@dem=Demandeur.where(id: @demande.demandeur_id).take
		
		/@dem=Demandeur.new
		@dem.nom="baya"
		@dem.prenom="reda"/
	end

	def liste
		 @demande = Demande.all.order("created_at DESC")
	end

	def edit
	end

	def update
		if @demande.update(demande_params)
			redirect_to @demande
		else render "Edit"
		end
	end

	def destroy
		@demande.destroy
		redirect_to "/demandes/liste"
	end

	private
	def demande_params
		params.require(:demande).permit(:description, :demandeur_id)
	end

	def find_demande
		@demande = Demande.find(params[:id])
	end
end
