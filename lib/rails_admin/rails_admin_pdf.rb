module RailsAdminPdf
end
 
require 'rails_admin/config/actions'
require 'prawn'
require 'gruff'
 
module RailsAdmin
	module Config
		module Actions
			class Pdf < Base

	      		RailsAdmin::Config::Actions.register(self)

	      		register_instance_option :member do
	      			true
	  			end
	      		register_instance_option :controller do
	      			Proc.new do
	      				# Configurando PDF

	      				PDF_OPTIONS = { :page_size => "A4",
              				:page_layout => :portrait,
              				:margin      => [40, 75]
            			}
 
            			# Configurando Retorno
            			ramdom_file_name = (0...8).map { (65 + rand(26)).chr }.join
 
			            Prawn::Document.new(PDF_OPTIONS) do |pdf|
							pdf.fill_color "666666"
							
							pdf.move_down 20
							if @object.class.to_s.eql? "Archive"

								pdf.text "Relatório de dados do Arquivo #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80
								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Categoria: #{@object.category.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Descrição: #{@object.description}", :size => 12, :align => :justify, :inline_format => true
								
								df.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
							
							elsif @object.class.to_s.eql? "OccurrenceBulletin"
								
								pdf.text "Relatório de dados do Boletim de Ocorrência #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80
								pdf.text "Data de Ocorrência: #{@object.occurrence_data}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Data Incerta: #{@object.uncertain_data}", :size => 12, :align => :justify, :inline_format => true	
								pdf.text "Tipo de Local: #{@object.location_type}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Relato: #{@object.description}", :size => 12, :align => :justify, :inline_format => true
								
								pdf.move_down 80
								pdf.text "Vítima", :size => 32, :align => :justify, :inline_format => true
								pdf.text "Nome: #{@object.person.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Data de Nascimento: #{@object.person.birth_date}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Email: #{@object.person.email}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Telefone", :size => 32, :align => :justify, :inline_format => true
								pdf.text "Código do país: #{@object.person.phone.country_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "DDD: #{@object.person.phone.ddd}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Número: #{@object.person.phone.number}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Endereço", :size => 32, :align => :justify, :inline_format => true
								pdf.text "Logradouro: #{@object.person.address.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Número: #{@object.person.address.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Bairro: #{@object.person.address.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Complemento: #{@object.person.address.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Cidade: #{@object.person.address.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "UF: #{@object.person.address.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "CEP: #{@object.person.address.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Referência: #{@object.person.address.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true

							














							elsif @object.class.to_s.eql? "User"
								pdf.text "Relatório de dados do Usuário #{@object.person.name}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80
								pdf.text "Nome: #{@object.person.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Email: #{@object.email}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Nome de Usuário: #{@object.username}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Nível de Acesso: #{@object.access_level.name}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80

								pdf.text "Telefone", :size => 32, :align => :justify, :inline_format => true
								pdf.text "Código do país: #{@object.person.phone.country_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "DDD: #{@object.person.phone.ddd}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Número: #{@object.person.phone.number}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80

								pdf.text "Endereço", :size => 32, :align => :justify, :inline_format => true
								pdf.text "Logradouro: #{@object.person.address.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Número: #{@object.person.address.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Bairro: #{@object.person.address.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Complemento: #{@object.person.address.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Cidade: #{@object.person.address.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "UF: #{@object.person.address.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "CEP: #{@object.person.address.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.text "Referência: #{@object.person.address.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true

						
								

							end
							
							pdf.move_down 20

							# Muda de font para Helvetica
							pdf.font "Helvetica"
							# Inclui em baixo da folha do lado direito a data e o némero da página usando a tag page
							pdf.number_pages "Gerado: #{(Time.now).strftime("%d/%m/%y as %H:%M")} - Página ", :start_count_at => 0, :page_filter => :all, :at => [pdf.bounds.right - 140, 7], :align => :right, :size => 8
							# Gera no nosso PDF e coloca na pasta public com o nome agreement.pdf
							pdf.render_file("public/#{ramdom_file_name}.pdf")

							File.open("public/#{ramdom_file_name}.pdf", 'r') do |f|
								send_data f.read.force_encoding('BINARY'), :filename => 'pdf', :type => "application/pdf", :disposition => "attachment"
							end
							File.delete("public/#{ramdom_file_name}.pdf")
						end
			        end
	      		end
	 
	        	register_instance_option :link_icon do
	          		'icon-folder-open'
	          	end
          	end
		end
	end
end
