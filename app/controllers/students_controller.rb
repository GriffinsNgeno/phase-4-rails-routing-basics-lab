class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades 
        students_grades = Student.all.order(grade: :desc)
        render json: students_grades
    end
    def highest
        highest_student = Student.all.order(grade: :desc).first
        render json: highest_student
    end
end
