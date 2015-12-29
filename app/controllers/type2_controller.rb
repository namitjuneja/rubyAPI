class Type2Controller < ApplicationController
  def index
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	puts params[:foo]
  	@data = {"content" => Type2.find(params[:num])["content"]}
  	render json: @data
  end
end
