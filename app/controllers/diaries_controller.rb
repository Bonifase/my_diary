class DiariesController < ApplicationController
    def index
      @diaries = Diary.all
    end

    def show
        @diary = Diary.find(params[:id])
    end
end
