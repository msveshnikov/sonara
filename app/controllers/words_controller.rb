class WordsController < ApplicationController

  # GET /words
  def index
    if params[:letter]
      @words = page(Word.by_letter(params[:letter]).order('name'))
    else
      if params[:search]
        @words = page(Word.search(params[:search]))
      else
        @words = page(Word)
      end
    end
  end

  # GET /words/1
  def show
    @word=Word.find(params[:id])
  end

  def page(a)
    a.paginate(page: params[:page], per_page: 15)
  end

end
