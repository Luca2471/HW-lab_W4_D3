require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )

require_relative( 'models/pizza_order' )
also_reload( 'models/*' )

# READ
# index
get '/pizza-orders' do
  @orders = PizzaOrder.all()
  erb(:index)
end

# new
get '/pizza-orders/new' do

  erb(:new)
end

# show
get '/pizza-orders/:id' do
  @order = PizzaOrder.find( params[:id].to_i() )
  erb(:show)
end

# create
post '/pizza-orders' do
  @order = PizzaOrder.new(params)
  @order.save()
  erb(:create)
end


# UPDATE
# edit

# update


# DELETE
# delete
