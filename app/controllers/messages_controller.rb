class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new message_params
    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to root_path
      flash[:notice] = "Votre message a bien été envoyé !"
    else
      flash[:notice] = "Votre message n'a pas pu être envoyé. Réessayez, ou contactez-moi au 06.12.11.69.56"
      # render :new
      redirect_to root_path
    end
  end

  private
  def message_params
    params.permit(:name, :email, :phone_number, :body)
  end

end
