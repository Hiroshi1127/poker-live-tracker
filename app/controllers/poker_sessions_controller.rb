class PokerSessionsController < ApplicationController
  def new
    @poker_session = PokerSession.new
  end

  def destroy
  end

  def create
    @poker_session = current_user.poker_sessions.build(poker_session_params)
    if @poker_session.save
      flash[:success] = "poker_session created!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def edit
    @poker_session = PokerSession.find(params[:id])
    @user = User.find(@poker_session.user_id)
  end

  def update
    @poker_session = PokerSession.find(params[:id])
    @poker_session.update(poker_session_params)
    redirect_to edit_poker_session_path
    flash[:success] = "update Success"
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def poker_session_params
      params.require(:poker_session).permit(:stakes, :buy_in, :cash_out, :place, :start_at, :stop_at, :memo)
    end
end
