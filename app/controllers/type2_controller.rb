class Type2Controller < ApplicationController
  def index
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	puts params[:foo]
  	@data = {"content" => Type2.find(params[:num])["content"]}
  	render json: @data
  end
  def index2
  	Type1.create(:head=> "21", :content => "21")
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	render json: @user
  end
end
