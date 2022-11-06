class QualificationsController < ApplicationController
  def index
    @qualifications = Qualification.all
  end

  def edit
    @qualification = Qualification.find params[:id]
  end

  def new
    @qualification = Qualification.new
  end

  def update
    # removing credentials with no user_id. indicates current_user left empty fields.
    # not the best way to handle this I think but it's a quick and dirty fix.
    @qualification = Qualification.find params[:id]
    @qualification.assign_attributes qualification_params
    @qualification.credentials.select { |c| !c.valid? }.map(&:destroy)

    if @qualification.save
      redirect_to qualifications_url
    else
      render action: :edit
    end
  end

  def create
    @qualification = Qualification.new qualification_params
    # removing credentials with no user_id. indicates current_user left empty fields.
    # not the best way to handle this I think but it's a quick and dirty fix.
    @qualification.credentials.select { |c| !c.valid? }.map(&:destroy)

    if @qualification.save
      redirect_to qualifications_url
    else
      render action: :new
    end
  end

  private

  def qualification_params
    params.require(:qualification).permit(:name, credentials_attributes: %i[user_id id _destroy])
  end
end
