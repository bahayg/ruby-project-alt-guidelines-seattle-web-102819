class PrincipalInvestigator < ActiveRecord::Base
    has_many :projects
    has_many :students, through: :projects
end