require 'json'

get '/' do
  @urls = Url.all
  erb :index
end

post '/urls' do

  # helper method
  u = Url.create(:long_url    => params[:long_url],
                 :short_url   => "#{rand_ident}",
                 :click_count => 0)

  if request.xhr?
    u.to_json; set :layout => false
  else
    @urls = Url.all
    erb :index
  end
end

get '/:short_url' do
  u = Url.find_by_short_url(params[:short_url])
  u.click_count += 1
  u.save

  if u.long_url.include? "http"
    redirect to "#{u.long_url}"
  else
    redirect to "http://#{u.long_url}"
  end
end
