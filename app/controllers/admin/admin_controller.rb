class Admin::AdminController < ApplicationController
  before_action :authenticate_employee!
  before_action :check_admin

  layout "admin"

  protected

  def check_admin
    redirect_to employees_path, notice: "У Вас немає прав доступу до даної сторінки" unless current_employee.admin?
  end
end