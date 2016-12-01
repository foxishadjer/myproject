class ProfilsController < ApplicationController

	before_action :profils_find, only: [:show, :edit, :update, :destroy]
	def index
		@profils =Profil.all.order(" created_at DESC")
	end

	def new 
		@profil = Profil.new
	end

	def create

		@profil = Profil.new(profils_params)
		if @profil.save
			redirect_to @profil
		else
			render "New"
		end

	end
	def show
		@secteur = Secteur.where(id: @profil.secteur_id).take
	end

	def edit
		
	end

	def update
		if @profil.upadate(profils_params)
			redirect_to @profil
		else
			render "Edit"
		end
	end

	def destroy
		Offre.where(profil_id: @profil.id).destroy_all
		@profil.destroy
		redirect_to root_path
	end

	private

	def profils_params
		params.require(:profil).permit(:societe, :logo, :tel, :email, :adresse, :description, :secteur_id, :avatar)
	end

	def profils_find
		@profil = Profil.find(params[:id])
	end
end
