#==============================================================================
# p29 ハッシュ
#==============================================================================
{ :tokyo => 13636222, :kanagawa => 9145572 }
{ tokyo: 13636222, kanagawa: 9145572 }

options = { font_size: 100, color: 'red' }
puts options[:font_size]
# => 100
options[:font_family] = 'Arial'
puts options[:font_family]
# => 'Arial'
puts options
# => {:font_size=>100, :color=>"red", :font_weight=>"bold"}

options.each do |key, value|
  print key, " ", value, "\n"
end
