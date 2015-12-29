class Type1Controller < ApplicationController
	def index
		require 'set'

		def rand_n(n, max)
		    randoms = Set.new
		    loop do
		        randoms << rand(max)
		        return randoms.to_a if randoms.size >= n
		    end
		end

		a, b, c, d, e, f, g, h, i, j = rand_n(10, 20)

		# puts Type1.find(a)["content"]
		@content =  [{"head" => Type1.find(a+1)["head"], "content" => Type1.find(a+1)["content"]}, 
			{"head" => Type1.find(b+1)["head"], "content" => Type1.find(b+1)["content"]},
			{"head" => Type1.find(c+1)["head"], "content" => Type1.find(c+1)["content"]},
			{"head" => Type1.find(d+1)["head"], "content" => Type1.find(d+1)["content"]},
			{"head" => Type1.find(e+1)["head"], "content" => Type1.find(e+1)["content"]},
			{"head" => Type1.find(f+1)["head"], "content" => Type1.find(f+1)["content"]},
			{"head" => Type1.find(g+1)["head"], "content" => Type1.find(g+1)["content"]},
			{"head" => Type1.find(h+1)["head"], "content" => Type1.find(h+1)["content"]},
			{"head" => Type1.find(i+1)["head"], "content" => Type1.find(i+1)["content"]},
			{"head" => Type1.find(j+1)["head"], "content" => Type1.find(j+1)["content"]}
		]
	        @user = {"name" => 'Max', "email" => ' m@m.com'}
	        render json: @content
	    end
end
