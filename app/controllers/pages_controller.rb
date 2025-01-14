class PagesController < ApplicationController
  def home
    @home_message = "Welcome Home 🏡 🏚️ with a beautiful garden 🪴"
  end
  def about
  end

  def contact
    @members = [ "mr lim", "mrs lim", "albert", "kent", "judy Goh" ]

    search = params[:member]
    if search
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
  end
end
