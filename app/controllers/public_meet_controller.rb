class PublicMeetController < ApplicationController
  layout 'public'
  def index
  end

  def new
    @meet = Meet.new
  end

  def create_meet
    @meet = Meet.create!(subject: params[:subject], meeting: params[:meeting], name: params[:name])

    if @meet
      redirect_to :back, notice: 'La cita ha sido enviada. Esperar confirmación del administrador'
    end
  end

  def show
  end
end
