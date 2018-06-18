class StaticPagesController < ApplicationController
  def home
    @subscription = Subscription.new
  end

  def about
  end

  def contacts
  end

  def literature
  end

  def explanations
  end
  
end
