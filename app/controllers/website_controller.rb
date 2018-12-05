class WebsiteController < ApplicationController
	def home
	end

	def about
	end

	def game
	end

	def vagas
		@archives = Archive.page(params[:page]).per(9)
	end

	def videos
		@archives = Archive.page(params[:page]).per(9)
	end

	def compromisso_e_atitude
		@news = News.all
	end

	def ministerio_publico
		@news = News.all
	end
end
