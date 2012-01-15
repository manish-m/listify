class ListRecord < ActiveRecord::Base
  belongs_to :db_connection
  belongs_to :user
end
