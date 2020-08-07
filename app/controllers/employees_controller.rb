class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all 
    end 
     
    def show
        @emp = Employee.find(params[:id])
    end 

    def new 
        @employee = Employee.new
    end 

    def edit
        @employee = Employee.find(params[:id]) 
    end 

    def update 
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee)

    end 

    def create
        @employee = Employee.new
        @employee = params[:first_name, :last_name , :alias, :title,:office, :dog_id, :img_url]
        @employee.save
        redirect_to employee_path(@employee)
    end 

    def set_employeemployee
        @employee = Employee.find(params[:id])
    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name , :alias, :title,:office, :dog_id, :img_url)
    end     
end 


    
