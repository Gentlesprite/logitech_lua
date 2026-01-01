Onepackage=4    --秒捡键位 根据鼠标具体型号查询后修改
kp=false        --2560*1080 3440*1440 (宽屏用户) 改为true 其它分辨率用户不用修改
zdzd=false        --是否自动装弹
mz=true
function OnEvent(event, arg)
if (event == "MOUSE_BUTTON_PRESSED" and arg == Onepackage) then
mz=false
PressAndReleaseKey("Tab")
i=0
mx=7580
my=55000
mybl=3825
mxi=50000
myi=50000
Sleep(70)
if kp then
mx=7580*2
mybl=math.ceil(3825*1.05)
end
repeat
MoveMouseTo(mx,my)
PressMouseButton(1)
MoveMouseTo(mx+2000,my)
PressMouseButton(1)
MoveMouseTo(mx,my)
PressMouseButton(1)
MoveMouseTo(mxi,myi)
ReleaseMouseButton(1)
MoveMouseTo(mxi+2000,myi)
ReleaseMouseButton(1)
MoveMouseTo(mxi,myi)
ReleaseMouseButton(1)
my=my-mybl
i=i+1
until(i>13)
PressAndReleaseKey("Tab")
mz=true
if zdzd then
Sleep(50)
PressAndReleaseKey("R")
end
end 	
end
