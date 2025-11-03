function onEvent(name, value1, value2)
    if name == 'CustomVid' then
        makeVideoSprite('ahfire', value1, 0, 0, 'camHUD', false)
        setProperty('ahfire.width', 10)
        setProperty('ahfire.height', 10)
        setObjectOrder('ahfire_video', 0)
        setProperty('ahfire_video.alpha', 1)
        setProperty('dad.visible', true)
    end
end
