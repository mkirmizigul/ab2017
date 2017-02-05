class PagesController < ApplicationController
  def index
    @today = Time.now
    #byebug
  end
  def contact
    @message= "This page is contact"
  end

  def contact_post
    @params=params['/contact']

    render 'pages/contact'
  end

end
