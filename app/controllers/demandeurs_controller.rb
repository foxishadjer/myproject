class DemandeursController < ApplicationController
	before_action :find_dmd, only: [:show, :edit, :update, :destroy]
	def index
		 @demandeurs = Demandeur.all.order("created_at DESC")
		
	end

	def new
		@demandeur = Demandeur.new

	end

	def create
		@demandeur = Demandeur.new(dmd_params)
		if @demandeur.save
			redirect_to @demandeur
		else
			render "New"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @demandeur.update(dmd_params)
			redirect_to @demandeur
		else render "Edit"
		end
	end

	def destroy
		
		Demande.where(demandeur_id: @demandeur.id).destroy_all
		@demandeur.destroy
		redirect_to root_path
	end

	private
	def dmd_params
		params.require(:demandeur).permit(:nom, :prenom, :tel, :email, :adresse, :description)
	end

	def find_dmd
		@demandeur = Demandeur.find(params[:id])
	end
end
