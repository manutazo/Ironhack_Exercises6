class Task < ActiveRecord::Base
	belongs_to :user

	def complete!
		self.completed = true
		self.save
		self
	end

	def as_json(options={})
		super(except: [:id, :create_at, :update_at])
	end
end
