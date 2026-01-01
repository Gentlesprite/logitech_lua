local resolutions = {
  ["1920x1080"] = { x = 53000, y = 54000 },
  ["2560x1440"] = { x = 55000, y = 55000 },
  ["2560x1080"] = { x = 57500, y = 54000 },
  ["3440x1080"] = { x = 60000, y = 54000 },
  ["3440x1440"] = { x = 57500, y = 61000 }
}

function OnEvent(event, arg)
  if event == "MOUSE_BUTTON_PRESSED" then
    if arg == 5 then
      -- 使用屏幕分辨率表中的值
      local resolution = resolutions["1920x1080"]
      MoveMouseTo(resolution.x, resolution.y)
      PressAndReleaseMouseButton(1)
    end
  end
end