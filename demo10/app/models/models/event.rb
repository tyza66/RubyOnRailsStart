class Event < ApplicationRecord
  validates_presence_of :name  #这样写就是说明name属性不能为空
end
