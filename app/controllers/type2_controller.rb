class Type2Controller < ApplicationController
  def index
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	puts params[:foo]
  	@data = {"content" => Type2.find(params[:num])["content"]}
  	render json: @data
  end
  def index2

  	Type1.create(:head=> "6", :content => "Data 6")
  	Type1.create(:head=> "7", :content => "Data 7")
  	Type1.create(:head=> "8", :content => "Data 8")
  	Type1.create(:head=> "9", :content => "Data 9")
  	Type1.create(:head=> "10", :content => "Data 10")
  	Type1.create(:head=> "11", :content => "Data 11")
  	Type1.create(:head=> "12", :content => "Data 12")
  	Type1.create(:head=> "13", :content => "Data 13")
  	Type1.create(:head=> "14", :content => "Data 14")
  	Type1.create(:head=> "15", :content => "Data 15")
  	Type1.create(:head=> "16", :content => "Data 16")
  	Type1.create(:head=> "17", :content => "Data 17")
  	Type1.create(:head=> "18", :content => "Data 18")
  	Type1.create(:head=> "19", :content => "Data 19")
  	Type1.create(:head=> "20", :content => "Data 20")


  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	render json: @user
  end
end
