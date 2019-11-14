class Project < ActiveRecord::Base
    belongs_to :principal_investigator
    belongs_to :student
end