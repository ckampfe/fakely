
get '/' do
  erb :index
end

post '/urls' do

  # helper method
  short_url = rand_ident

  u = Url.create(:long_url    => params[:long_url],
                 :short_url   => "/#{short_url}",
                 :click_count => 0)
  
  if request.xhr?
    { :url => u } #:layout => false
  else
    @urls = Url.all
    erb :index
  end
end

get '/:short_url' do

  # redirect to appropriate long url  

end
