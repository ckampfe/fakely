require 'faker'
require_relative '../app/helpers/helpers'
require_relative '../app/models/url'

10.times do

  Url.create(:long_url => Faker::Internet.url,
             :short_url => rand_ident,
             :click_count => 0)

end
