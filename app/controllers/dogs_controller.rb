class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end
    
    def dogs_up_for_adoption
        @dogs = Dog.all.select {|dog| dog.employees.empty?}
    end

    def adopt_a_dog_form
        @dog = Dog.find(params[:id])
    end

    def adopt
        @dog = Dog.find(params[:id])
        employee = Employee.find(params[:new_employee_id])
        @dog.employees << employee
        redirect_to dogs_up_for_adoption_path
    end
   
   

end
