class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :show, :destroy]
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      current_user.add_role :registrar, @employee
      redirect_to employees_path, notice: 'Employee was successfully created.'
    else
      render :new
    end
  end

  def edit 
  end

  def update
    if @employee.update(employee_params)
      current_user.add_role :editor, @employee
      redirect_to employees_path, notice: 'Employee has been successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    return unless @employee.destroy

    redirect_to employees_path, notice: 'Employee has been deleted.'
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name,:last_name,:personal_email,:city,:state,:country,:pincode,:address)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
    redirect_to employees_path, notice: error
  end
end
