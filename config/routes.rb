Rails.application.routes.draw do

  get("/random/result", to: "calculator#rand_result")
  get("/random/new", to: "calculator#rand_new")
  get("/square/result", to: "calculator#sq_result")
  get("/square/new", to: "calculator#sq_new")
  get("/square_root/result", to: "calculator#sq_rt_result")
  get("/square_root/new", to: "calculator#sq_rt_new")
  get("/payment/result", to: "calculator#pay_result")
  get("/payment/new", to: "calculator#pay_new")

end
