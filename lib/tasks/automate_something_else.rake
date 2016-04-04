task :leaves => :the do
	if ENV["please"] 
		puts "done"
	else
		puts "hell no"
	end
end