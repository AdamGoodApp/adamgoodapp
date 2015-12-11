class Vision

  @client = Hue::Client.new

  def self.lights
    @client.lights
  end

  def self.all_on!
    lights.each {|light| light.on! }
  end

  def self.all_of!
    lights.each {|light| light.off! }
  end

  def self.number_of_lights
    lights.count
  end

  def self.alert_lights
    lights.each do |light|
      light.set_state({alert: 'none'})
      light.set_state({alert: 'alert'})
    end
  end


end