class ContestsController < ApplicationController
  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(params[:contest])
    if @contest.save
    	
      # Composer is making this red for some reason
      # We want it to be green
      flash[:success] = "Contest created!"
      redirect_to contest_path(@contest)
    else
   	  flash[:error] = "Contest not created!"
   	  redirect_to new_contest_path
    end
  end

  def show
    @contest = Contest.find(params[:id])
  end
end
