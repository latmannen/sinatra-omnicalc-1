require "sinatra"
require "sinatra/reloader"

#Homepage
get("/") do
  erb(:square)
end

#Square Section
get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

#Square Root Section
get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 0.5
  erb(:square_root_results)
end

#Payment Section. Follow the rake grade to see what to do next. mostly formatting. 
get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("users_apr").to_f
  @years = params.fetch("users_years").to_f
  @pv = params.fetch("users_pv").to_f
  
  @the_result = (@apr/100/12 * @pv)/(1-(1+@apr/100/12)** (-1.0 * @years*12))
  erb(:payment_results)
end
