class Blog < ActiveRecord::Base
	has_many :comments
	belongs_to :user


# dependent: :destroy

end