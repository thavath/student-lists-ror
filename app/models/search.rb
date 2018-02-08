class Search < ActiveRecord::Base
    def search_student
        
        studentts = Studentt.all
        
        studentts = Studentt.where(["name LIKE ?", "%#{namess}%"]) if namess.present?
        studentts = Studentt.where(["type LIKE ?", "%#{typess}%"]) if typess.present?
        studentts = Studentt.where(["company LIKE ?", "%#{sending}%"]) if sending.present?
        studentts = Studentt.where(["type LIKE ?", "%#{levels}%"]) if levels.present?
        studentts = Studentt.where(["age LIKE ?", "%#{age}%"]) if age.present?    
        studentts = Studentt.where(["work LIKE ?", "%#{workfeild}%"]) if workfeild.present?
        
        # return studentts
    end

end
