# == Schema Information
#
# Table name: links
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  url        :string(255)     not null
#  points     :integer         default(0)
#  created_at :datetime
#  updated_at :datetime
#

class Link < ActiveRecord::Base

  # self.table_name = 'links'
 
  attr_accessor :score 

  def recalc_score
    time_elapsed = (Time.now - self.created_at) / 3600    ## in hours?
    self.score = ((self.points-1) / (time_elapsed+2)**1.8)  ## .real
  end
 
  def self.hot
    self.all.each { |rec| rec.recalc_score }.sort { |l,r| l.score <=> r.score }.reverse
  end
  
  def url_host
    uri = URI.parse( url )
    uri.host
  end

end # class Link
