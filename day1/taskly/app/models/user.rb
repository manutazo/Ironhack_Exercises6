class User < ActiveRecord::Base
	has_many :tasks
	def as_json(options={})
		super(only: [:id, :name, :email],
			methods: [:task_cunt],
			include: [tasks: {only: [:id, :name, :completed]
				}])
	end
	def task_count
		self.tasks.count
	end
end
