require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]    #Say this is a login page and you put in your username and correct password
    "Hello #{@user_name}!"        #Those are both <input> elements, so one probably was something like <input name="name">
  end                             #in a separate .erb called login.erb or something, which most likely had
                                  # <form action = '/hello#HELP' method = POST> to send that input's crap over (in params hash??)
                                  #So, is /hello:name short for saying "From the data POSTed to me, get :name from params"
                                  #This :name will be visible in the URL in the browser AND able to be used as an argument if calling params[:name]

                                  # Form data --> POST to other erb file --> erb file automatically has params hash
                                  #with stuff in it like {:name => "Example", :age => 9999} with the symbols being the name/id of inputs from form
                                  #The data of those inputs can then be accessed by params[:input_name],
                                  #So if filled a form <input name='name'>Example</input> and then POSTED over
                                  #The resulting params hash you could get "Example" by params[:name] 


  # Code your final two routes here:

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    # binding.pry
    (params[:num1].to_i*params[:num2].to_i).to_s

  end

end