class Earthling < ActiveRecord::Base

    has_many :visitations
    has_many :aliens, through: :visitations

    def full_name
        "#{first_name.titleize} #{last_name.titleize}"
    end

    def self.filter_by_job job
        # where(job: job)
        where( "job = ?", job )
    end
end
