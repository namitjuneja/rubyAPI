class Type2Controller < ApplicationController
  def index
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	puts params[:foo]
  	@data = {"content" => Type2.find(params[:num])["content"]}
  	render json: @data
  end
  def index2

  	Type1.create(:head=> "2", :content => "Data 2")
  	Type1.create(:head=> "3", :content => "Data 3")
  	Type1.create(:head=> "4", :content => "Data 4")
  	Type1.create(:head=> "5", :content => "Data 5")


  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	render json: @user
  end
end
