class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @feedbacks = [{name: "Sergey",
  description: "  Spores House is the place that you will never forget! Such a unique atmosphere of unity and sharing; I believe that the lifeview which Allan and his Team promote via Spores is a close and inevitable future of our society! It impress a lot and drive us to spread this spirit around the world" ,
  location: "Moscow - Russia",
  picture: "sergey.jpeg"},
  {name: "Katherine" ,
  description: "Spores Home is an incredible place and it is hard to find words to describe the experience there, you should definitly go there by your own to experience it! :)
My friend Laura and I, we had an amazing time there while chilling in the house, hiking in the mountains and meeting wonderful people! Thank you so much for creating this place :) we will come back again! :)",
  location: "Trier - Germany",
  picture: "kathi.jpeg"},
  { name: "Jim & Lisa",
  description: "To stay at Spores home was a great experience. I stayed with my girlfriend for a week: we met so many great people, had unforgettable moments, made friendships and we shared food and knowledge :) If you have the chance to stay at this unbelievable beautiful place take it!! " ,
  location: "Prague - Czechia",
  picture: "jim.png"}]
  end
end
