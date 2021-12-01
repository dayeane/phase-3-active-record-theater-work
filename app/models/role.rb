
class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map do |a|
      a.actors
    end
  end

  def locations
    self.auditions.maps(&:location)
  end

  def lead
    lead = self.auditions.find{|audition | audition.hired}
    lead ? lead: "No actor has been hired for this role"
  end

  def understudy
    hireds = self.auditions.filter{|aud| aud.hired}
    understudy = hireds[1]
    understudy ? understudy : "No actor has been hired for this role"
  end
end