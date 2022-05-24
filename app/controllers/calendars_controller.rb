class CalendarsController < ApplicationController

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to request.referer
    else
       redirect_to request.referer, notice: "投稿に失敗しました。"
    end
  end

  def update

  end

  def destroy
    calendar = Calendar.find(params[:id])
    if calendar.destroy
      redirect_to request.referer, notice: "レビューが削除されました。"
    else
      redirect_to request.referer, notice: "削除に失敗しました。"
    end
  end


  private

  def calendar_params
    params.require(:calendar).permit(:name,:color)
  end

end
