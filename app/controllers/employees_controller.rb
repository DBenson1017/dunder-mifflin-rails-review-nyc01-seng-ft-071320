class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all 
    end 
     
    def show
        @emp = Employee.find(params[:id])
    end 

end
