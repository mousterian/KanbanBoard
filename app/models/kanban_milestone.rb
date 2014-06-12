class KanbanMilestone < ActiveRecord::Base

    validates :kms_name, :presence => {:message => 'cannot be empty'}#, uniqueness: true

    validates_uniqueness_of :kms_name, :scope => :kanban_id

    has_many :milestones, :dependent => :destroy

    belongs_to :kanban

end
