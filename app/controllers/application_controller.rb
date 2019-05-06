class ApplicationController < Sinatra::Base
	helpers Sinatra::Jsonp

	mime_type :json, 'application/json'

	set :root, File.expand_path('./')
	set :views, settings.root + '/public/'
  	enable :static


	before do 
		content_type :json
	end

	#example json to return
	return_template = {

		'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id risus ligula. Aliquam facilisis auctor ullamcorper. Suspendisse porta risus elit, nec sollicitudin lorem lobortis at. Nulla id aliquet mauris. Phasellus facilisis quis purus sed suscipit. Donec neque leo, commodo quis ornare id, malesuada vitae erat. Nunc non dui pellentesque, tempor turpis quis, eleifend elit. Aliquam eget vulputate mauris. Curabitur lacinia metus in magna pretium congue. Proin id est ligula.',
		'img-url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8hVFWo76kBWbob44xQ78SdlItsN2aGYptpfnd6WRpHKjFUb3F'
	}

	#Webclient to interact with API
	get '/' do
		content_type 'text/html'
		send_file 'public/webclient.html'
	end

	#API endpoints to fetch a JSON response
	get '/apiv1' do
		JSONP return_template
	end

	get '/apiv1/:page_id' do 

	end

	put '/apiv1/:page_id' do

	end

	delete '/apiv1/:page_id'do
	
	end



end