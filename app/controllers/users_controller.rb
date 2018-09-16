class UsersController < ApplicationController
  
  def index
  	
  end

  def generate_pdf
  	@users = User.all
  	file_name = "testing_pdf"
  	render :pdf => file_name,
     show_as_html: params.key?('debug'),
     :margin => { :top => 15 },
     :template => "users/testing_pdfs.html.erb",
     page_size: 'A3',
     disposition: 'attachment',
     orientation:'Landscape',
     footer: {    left: "#{Time.now.strftime("%m/%d/%Y")}",
                  center: "#{file_name}",
                  right: '[page] of [topage]',
                  font_size: 10
             }
  end

end
