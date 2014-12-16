# encoding: utf-8
#
class HomeController < ApplicationController
  def index
    if current_user
      @dreams=current_user.dreams.order('created_at desc').group_by { |item| l(item.created_at, format: '%d %B %Y') }
    end
  end
end
