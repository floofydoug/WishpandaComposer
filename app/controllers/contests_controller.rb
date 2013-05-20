class ContestsController < ApplicationController
  def new
    @contest = Contest.new
  end
end
