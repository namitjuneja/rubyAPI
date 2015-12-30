class Type2Controller < ApplicationController
  def index
  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	puts params[:foo]
  	@data = {"content" => Type2.find(params[:num])["content"]}
  	render json: @data
  end
  def index2

  	Type2.create(:head=> "1", :content => "Additional Content for 1")
  	Type2.create(:head=> "2", :content => "Additional Content for 2")
  	Type2.create(:head=> "3", :content => "Additional Content for 3")
  	Type2.create(:head=> "4", :content => "Additional Content for 4")
  	Type2.create(:head=> "5", :content => "Additional Content for 5")
  	Type2.create(:head=> "6", :content => "Additional Content for 6")
  	Type2.create(:head=> "7", :content => "Additional Content for 7")
  	Type2.create(:head=> "8", :content => "Additional Content for 8")
  	Type2.create(:head=> "9", :content => "Additional Content for 9")
  	Type2.create(:head=> "10", :content => "Additional Content for 10")
  	Type2.create(:head=> "11", :content => "Additional Content for 11")
  	Type2.create(:head=> "12", :content => "Additional Content for 12")
  	Type2.create(:head=> "13", :content => "Additional Content for 13")
  	Type2.create(:head=> "14", :content => "Additional Content for 14")
  	Type2.create(:head=> "15", :content => "Additional Content for 15")
  	Type2.create(:head=> "16", :content => "Additional Content for 16")
  	Type2.create(:head=> "17", :content => "Additional Content for 17")
  	Type2.create(:head=> "18", :content => "Additional Content for 18")
  	Type2.create(:head=> "19", :content => "Additional Content for 19")
  	Type2.create(:head=> "20", :content => "Additional Content for 20")

  	@user = {"name" => 'Max', "email" => ' m@m.com'}
  	render json: @user
  end
end
