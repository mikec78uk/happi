class ContentsController < ApplicationController

def index
end

def show
end

def new
	@content = Content.new	
end

def create
	@content= Content.new(contact_params)

	if @content.save
		ContactMailer.contact_request(@content).deliver
		flash[:success] = "Your message has been sent. We'll be in touch soon"
		redirect_to root_path
	else
		flash[:error] = "Sorry, there was a problem. Please try sending your message again"
		render "new"

	end
end

def edit
end

def update
end

def destroy
end

def contact_params
	params.require(:content).permit(:name, :email, :message)
end

end
