Pod::Spec.new do |s|
  s.name         = "NetworkAdventures"
  s.version      = "0.0.1"
  s.summary      = "Network Explorer."
  s.homepage     = "http://www.tippincanoe.com"
  s.license      = 'MIT'
  s.authors      = { "Jeff Friesen" => "j.friesen@tippingcanoe.com", "Sudeep Sidhu" => "and email address" }
  s.source       = { :git => "git@github.com:robotafterall/NetworkAdventures.git", :tag => "0.0.1" }
  s.source_files = 'NetworkAdventures', 'NetworkAdventures/*.{h,m}'
  s.requires_arc = true
end
