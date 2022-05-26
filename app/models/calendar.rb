class Calendar < ApplicationRecord

 has_many:diary_blogs, dependent: :destroy

end
