class CelestialBody
  attr_accessor :name, :type
end

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = 'planet'
  hash[key] = body
  body
end

bodies[:earth].name = 'Earth'
bodies[:moon].name = 'Moon'
bodies[:moon].type = 'moon'

puts bodies
