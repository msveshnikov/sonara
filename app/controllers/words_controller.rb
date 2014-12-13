class WordsController < ApplicationController

  # GET /words
  def index
    @words = Word.paginate(page: params[:page], per_page: 50)

  end

  # GET /words/1
  def show
    @word=Word.find(params[:id])
  end


end
