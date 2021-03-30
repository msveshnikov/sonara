class WordsController < ApplicationController
  before_filter :check_for_mobile

  # GET /words?letter ?search
  def index
    if params[:letter]
      @words = page(Word.letter(params[:letter]))
    else
      if params[:search]
        @words = page(Word.search(params[:search]))
        redirect_to word_path(@words[0]) if @words.size==1
      else
        @words = page(Word.all)
      end
    end
  end

  # GET /words/1
  def show
    @word = Word.find(params[:id])
    @comments = @word.comments
    current_user.dreams.build(word_id: params[:id]).save if current_user
  end

  def page(a)
    return a if mobile_device?
    a.paginate(page: params[:page], per_page: 45)
  end
end
