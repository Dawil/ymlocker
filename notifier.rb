#!/usr/bin/ruby

notification = ARGF.to_a.map(&:chomp)
winIcon = '/home/dave/tmp/kt-info-widget.svg'
errIcon = '/usr/share/icons/NITRUX/actions/scalable/dialog-error.svg'
won = notification[0].include? 'success'
output = <<OUTPUT
"#{notification[1]}: **#{notification[0]}**" "#{notification[2]}" -u low -a guard -c tests -i #{( won) ? winIcon : errIcon}
OUTPUT
puts output
