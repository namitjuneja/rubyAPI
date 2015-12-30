class Type2Controller < ApplicationController
  def index
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	puts params[:foo]
  	@data = {"content" => Type2.find(params[:num])["content"]}
    response.headers['Access-Control-Allow-Origin'] = '*'
  	render json: @data
  end
  def index2

  	

  	
  end
end
