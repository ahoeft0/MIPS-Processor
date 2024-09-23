view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/add_isa/clock 
wave create -driver freeze -pattern repeater -initialvalue 1 -period 200ps -sequence { 1 0 0 0 0 0  } -repeat forever -starttime 0ps -endtime 1000ps sim:/add_isa/reset 
WaveCollapseAll -1
wave clipboard restore
