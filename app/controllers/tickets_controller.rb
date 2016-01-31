class TicketsController < ApplicationController
   
  before_filter :authorize
   
  def index
 		@tickets = Ticket.all
  end

  def show
  	find_ticket
  end

  def new
  	@ticket = Ticket.new
  end

  def create
  	@ticket = Ticket.create(ticket_params)
  		if @ticket.valid?
  			redirect_to tickets_path
  		else
  			render 'new'
  		end
  end			

  def edit
  	find_ticket
  end

  def update
  	find_ticket
  	@ticket.update(ticket_params)
  	redirect_to tickets_path
  end

  def destroy
  	find_ticket
  	@ticket.destroy
  	redirect_to tickets_path
  end

  private

  def find_ticket  
  	@ticket = Ticket.find(params[:id])
  end

  def ticket_params
  	params.require(:ticket).permit(:submit_by, :title, :body, :tracker, :severity, :assignee, :state)
  end	


end