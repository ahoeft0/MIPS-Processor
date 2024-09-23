view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/add_isa/clock 
wave create -driver freeze -pattern repeater -initialvalue 1 -period 200ps -sequence { 1 0 0 0 0 0  } -repeat forever -starttime 0ps -endtime 1000ps sim:/add_isa/reset 
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps sim:/pipeline/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 2000ps sim:/pipeline/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 200ps Edit:/pipeline/reset 
WaveCollapseAll -1
wave clipboard restore
