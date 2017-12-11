class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(message_params)
    if @contact.save
      ContactMailer.contact_me(@contact).deliver
      flash[:success] = "Formulário enviado com sucesso."
      redirect_to '/contato'
    else
      flash.now[:danger] = 'O formulário não pôde ser enviado. Verifique se os campos estão preenchidos corretamente.'
      render :new
    end
  end


private

  def message_params
    params.require(:contact).permit(:name, :email, :body)
  end
end
