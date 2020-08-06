class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all 
    end 
     
    def show
        @emp = Employee.find(params[:id])
    end 

    def new 
        @employee = Employee.create(employee_params)
    end 

    def edit
        @employee = Employee.find(params[:id]) 
    end 

    def update 
        @employee = Employee.find(params[:id])
        @employee.update(emloyee_params)
        redirect_to employee_path(@employee)

    end 







end
