class House < ActiveRecord::Base
  has_many(
    :person,
    class_name: 'person'
    primary_key: :id
    foreign_key: :persons_id
  )
end
