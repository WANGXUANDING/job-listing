class Admin::JobsController < ApplicationController
  # before_action :require_is_admin
  def index
    @jobs = Job.order("created_at DESC")
    # .where(:is_hidden =>false)
  end


  # def require_is_admin
  #   if !current_user.admin?
  #     redirect_to root_path
  #   end
  # end
end
