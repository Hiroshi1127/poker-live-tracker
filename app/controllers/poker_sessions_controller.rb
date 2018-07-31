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
end
