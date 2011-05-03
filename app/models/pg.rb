require 'digest/sha2'
class Pg < ActiveRecord::Base

def before_save
    self.password = Digest::SHA2.hexdigest(self.password)
  end
end
