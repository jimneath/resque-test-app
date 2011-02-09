class JobsController < ApplicationController
  def index
  
  end

  def create
    Resque.enqueue(SleepJob)
    redirect_to :back, :notice => 'Job queued'
  end
end
