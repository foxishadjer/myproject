class OffresController < ApplicationController

	before_action :offres_find, only: [:show, :edit, :update, :destroy]

	def list
		@offres =Offre.all.order(" created_at DESC")
	end

	def show
		@profil = Profil.where(id: @offre.profil_id).take
	end

	def new
		@offre = Offre.new
		@dernier_profil = Profil.last
	end

	def create
		@offre = Offre.new(offres_params)
		@dernier_profil = Profil.last
		@offre.profil_id =@dernier_profil.id
		if @offre.save
			redirect_to @offre
		else
			render "New"
		end
	end

	def edit
	end

	def update
		if @offre.update(offres_params)
			redirect_to @offre
		else
			render "Edit"
		end
	end

	def destroy
		@offre.destroy
		@dernier_profil = Profil.last
		redirect_to @dernier_profil
	end

	def index
	end

	private

	def offres_params
		params.require(:offre).permit(:poste, :descripotion_p, :lieu, :ceitere, :date_pub, :duree, :profil_id)
	end

	def offres_find
		@offre = Offre.find(params[:id])
	end

end
