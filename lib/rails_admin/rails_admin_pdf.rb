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

							if @object.class.to_s.eql? "AccessLevel"

								pdf.text "Relatório de dados do Nível de Acesso #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Nível: #{@object.level}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true

							elsif @object.class.to_s.eql? "Address"

								pdf.text "Relatório de dados do Endereço #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.move_down 80
								pdf.text "Endereço", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Logradouro: #{@object.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Bairro: #{@object.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Complemento: #{@object.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Cidade: #{@object.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "UF: #{@object.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "CEP: #{@object.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Referência: #{@object.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true

							elsif @object.class.to_s.eql? "AnonymousDenounciation"

								pdf.text "Relatório de dados da Denúncia Anônima #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Data de Ocorrência: #{@object.occurrence_date}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Data Incerta: #{@object.uncertain_date}", :size => 12, :align => :justify, :inline_format => true	
								pdf.move_down 10
								pdf.text "Tipo de Local: #{@object.location_type}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Relato: #{@object.report}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Endereço da Ocorrência", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Logradouro: #{@object.address.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.address.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Bairro: #{@object.address.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Complemento: #{@object.address.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Cidade: #{@object.address.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "UF: #{@object.address.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "CEP: #{@object.address.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Referência: #{@object.address.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "Archive"

								pdf.text "Relatório de dados do Arquivo #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Categoria: #{@object.category.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Descrição: #{@object.description}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true	
							
							elsif @object.class.to_s.eql? "Category"

								pdf.text "Relatório de dados da Categoria #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Link: #{@object.link}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Status: #{@object.status}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
							
							elsif @object.class.to_s.eql? "Comentary"
								
								pdf.text "Relatório de dados do Comentário #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Data do comentário: #{@object.date}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Pertence a publicação: #{@object.publication_id}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Conteúdo", :size => 32, :style => :bold, :align => :center
								pdf.text "#{@object.content}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true

							elsif @object.class.to_s.eql? "Doubt"

								pdf.text "Relatório de dados da Dúvida #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "#{@object.question.ask}", :size => 24, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "#{@object.answer}", :size => 16, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true

							elsif @object.class.to_s.eql? "Institute"

								pdf.text "Relatório de dados da Rede de Atendimento #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Descrição: #{@object.description}", :size => 12, :align => :justify, :inline_format => true	
								pdf.move_down 10
								pdf.text "Observação: #{@object.note}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Email: #{@object.email}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Locais de Atendimento: #{@object.attendance_locals}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Telefone", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Código do país: #{@object.phone.country_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "DDD: #{@object.phone.ddd}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.phone.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Endereço", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Logradouro: #{@object.address.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.address.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Bairro: #{@object.address.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Complemento: #{@object.address.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Cidade: #{@object.address.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "UF: #{@object.address.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "CEP: #{@object.address.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Referência: #{@object.address.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "OccurrenceBulletin"
								
								pdf.text "Relatório de dados do Boletim de Ocorrência #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.text "Data de Ocorrência: #{@object.occurrence_date}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Data Incerta: #{@object.uncertain_date}", :size => 12, :align => :justify, :inline_format => true	
								pdf.move_down 10
								pdf.text "Tipo de Local: #{@object.location_type}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Relato: #{@object.report}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								
								pdf.move_down 80
								pdf.text "Vítima", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Nome: #{@object.person.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Data de Nascimento: #{@object.person.birth_date}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Email: #{@object.person.email}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Telefone", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Código do país: #{@object.person.phone.country_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "DDD: #{@object.person.phone.ddd}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.person.phone.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Endereço", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Logradouro: #{@object.person.address.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.person.address.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Bairro: #{@object.person.address.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Complemento: #{@object.person.address.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Cidade: #{@object.person.address.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "UF: #{@object.person.address.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "CEP: #{@object.person.address.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Referência: #{@object.person.address.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "Person"
								
								pdf.text "Relatório de dados da Pessoa #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80
								
								pdf.move_down 80
								pdf.text "Pessoa", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Data de Nascimento: #{@object.birth_date}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Email: #{@object.email}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Telefone", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Código do país: #{@object.phone.country_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "DDD: #{@object.phone.ddd}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.phone.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Endereço", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Logradouro: #{@object.address.public_place}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.address.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Bairro: #{@object.address.neighborhood}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Complemento: #{@object.address.complement}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Cidade: #{@object.address.city}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "UF: #{@object.address.federative_unit}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "CEP: #{@object.address.zip_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Referência: #{@object.address.reference}", :size => 12, :align => :justify, :inline_format => true

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "Phone"
								
								pdf.text "Relatório de dados do Telefone #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.move_down 80
								pdf.text "Telefone", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Código do país: #{@object.country_code}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "DDD: #{@object.ddd}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Número: #{@object.number}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "Publication"

								pdf.text "Relatório de dados da Publicação #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.move_down 80
								pdf.text "Publicação", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Título: #{@object.title}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Data de publicação: #{@object.date}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "#{@object.content}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 80

								if @object.comentaries != nil then
									pdf.text "Comentários", :size => 32, :align => :justify, :inline_format => true
									@object.comentaries.each do |comentary|
										pdf.text "Data do comentário: #{comentary.created_at}", :size => 12, :align => :justify, :inline_format => true
										pdf.move_down 10
										pdf.text "Conteúdo", :size => 18, :style => :bold, :align => :center
										pdf.text "#{comentary.content}", :size => 12, :align => :justify, :inline_format => true
										pdf.move_down 20
									end
								end

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "Question"

								pdf.text "Relatório de dados da Pergunta #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.move_down 80
								pdf.text "Pergunta", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Pergunta: #{@object.ask}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Status: #{@object.status}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

							elsif @object.class.to_s.eql? "SubCategory"

								pdf.text "Relatório de dados da SubCategoria #{@object.id}", :size => 32, :style => :bold, :align => :center
								pdf.move_down 80

								pdf.move_down 80
								pdf.text "SubCategoria", :size => 32, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Nome: #{@object.name}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Link: #{@object.link}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Status: #{@object.status}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Pertence a Categoria: #{@object.category_id}", :size => 12, :align => :justify, :inline_format => true
								pdf.move_down 10

								pdf.move_down 80
								pdf.text "Criado em: #{@object.created_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10
								pdf.text "Atualizado em: #{@object.updated_at}", :size => 20, :align => :justify, :inline_format => true
								pdf.move_down 10

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
