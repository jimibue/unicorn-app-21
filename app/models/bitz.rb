class Bitz < ApplicationRecord
  belongs_to :user
  belongs_to :bitz_def

  def self.all_bitzs
#     select u.name as holder_name,issuer.name as issuer_name, bitzs.value as bitz_value, bitz_defs.name as bitz_defs_name
# from bitzs 
# inner join users u on u.id = bitzs.user_id
# inner join users issuer on issuer.id = bitzs.issuer_id
# inner join bitz_defs on bitz_defs.id = bitzs.bitz_def_id
  select(' u.name as holder_name,issuer.name as issuer_name, bitzs.value as bitz_value, bitz_defs.name as bitz_defs_name')
  .from('bitzs')
  .joins("inner join users u on u.id = bitzs.user_id
    inner join users issuer on issuer.id = bitzs.issuer_id
    inner join bitz_defs on bitz_defs.id = bitzs.bitz_def_id")
  end
end
