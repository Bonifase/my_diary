class DiariesController < ApplicationController
    before_action :require_login

    def index
      @diaries = current_user.diaries
    end

    def show
        @diary = current_user.diaries.find(params[:id])
    end
    
    def new
        @diary =current_user.diaries.build
    end

    def create
        @diary = current_user.diaries.build(diary_params)

        if @diary.save
            redirect_to diary_path(@diary), notice: "Diary Created!"
        else
            @errors = @diary.errors.full_messages
            render :new
        end
    end

    def destroy
        diary = current_user.diaries.find(params[:id])
        diary.destroy
        redirect_to diaries_path, notice: "Deleted Diary: #{diary.title}"
    end

    private

    def diary_params
        params.require(:diary).permit(:title, :description)
    end
end
