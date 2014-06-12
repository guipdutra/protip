require 'redis'

class ProtipRepo
  REDIS = Redis.new

  def self.save(protip)
    REDIS.lpush "protips", {:text => protip.text, :owner => protip.owner}
  end

  def self.count
    REDIS.llen "protips"
  end
end
