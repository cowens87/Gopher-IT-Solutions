class TicketsController < ApplicationController
  before_action :find_ticket, only: [:edit, :update, :show, :destroy]

  def index
    if params[:sort] == 'newest'
      @tickets = Ticket.sort_by_newest
    else
      @tickets = Ticket.all
    end
  end

  def new
   @ticket = Ticket.new
  end

  def create
    ticket = Ticket.create!(ticket_params)
    redirect_to ticket_path(ticket)
  end

  def edit; end

  def update
    @ticket.update!(ticket_params)
    redirect_to ticket_path(@ticket)
  end

  def show; end

  
  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:title, :description, :status)
  end
end