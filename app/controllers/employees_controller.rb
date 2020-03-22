class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.page(params[:page]).per(2)
  end
end