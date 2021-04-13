class Trustee < ApplicationRecord
  belongs_to :user
  belongs_to :user
  #     select u.name as user_name,  trustee.name as trustee_name, user_id, trustee_id
# from trustees 
# inner join users u on u.id = trustees.user_id
# inner join users trustee on trustee.id = trustees.trustee_id;
def self.trustees_list
  select('u.name as user_name,  trustee.name as trustee_name, user_id, trustee_id')
  .from('trustees')
  .joins('inner join users u on u.id = trustees.user_id
    inner join users trustee on trustee.id = trustees.trustee_id')
 end
end
