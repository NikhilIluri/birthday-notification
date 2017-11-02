class HomeController < ApplicationController
  #layout false
  def admin
    render('login')
  end

  def customer
	@categories=Category.all
  end

  def homepage
    render('homepage')
  end
  
  def display
	@category=Category.find(params[:id])
  @products=@category.products
  end
  
  def admin_redirect
    render('home/admin_redirect')
  end

  def authenticate
    authenticate_or_request_with_http_basic do |username,password|
    Admin.where(username:username,password:password).first.present?
    render('home/admin_redirect')
    end
    end

     
end
