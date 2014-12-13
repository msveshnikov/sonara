# encoding: utf-8
#
class HomeController < ApplicationController
  def index
    @first_letters=("а".."я").to_a
  end
end
