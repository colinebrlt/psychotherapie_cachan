class MessageMailer < ApplicationMailer

  def contact(message)
    @body = message.body
    mail(to: 'coline.brault@gmail.com', subject: 'Nouveau message !')
  end 
end
