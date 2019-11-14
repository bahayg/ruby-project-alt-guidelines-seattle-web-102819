class Student < ActiveRecord::Base
    has_many :projects
    has_many :principal_investigator, through: :projects
end