#!/usr/bin/fish
set current (swaymsg -t get_workspaces -p | grep 'focused' | awk '{print $2}')
if test $argv[1] = next
  set target (math $current+1)
  if test $target -ge 11
    set target (math $target-10)
  end
  swaymsg workspace $target
else
  set target (math $current-1)
  if test $target -le 0
    set target (math $target+10)
  end
  swaymsg workspace $target
end
