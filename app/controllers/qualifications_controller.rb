class QualificationsController < ApplicationController
  def index
    @qualifications = Qualification.all
  end

  def edit
    @qualification = Qualification.find params[:id]
  end
end
