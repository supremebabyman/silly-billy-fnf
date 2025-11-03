
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
    -- background shit

    makeLuaSprite('illmakeyoushake', 'illmakeyoushake', -800, -900);
    setScrollFactor('illmakeyoushake', 1.0, 1.0);
    scaleObject('illmakeyoushake', 1.0, 1.0);

    makeLuaSprite('silly_main', 'silly_main', -800, -900);
    setScrollFactor('silly_main', 1.0, 1.0);
    scaleObject('silly_main', 1.0, 1.0);

    -- sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('pillarsforegroun', 'pillarsforegroun', -800, -900);
        setScrollFactor('pillarsforegroun', 1.0, 1.0);
        scaleObject('pillarsforegroun', 1.0, 1.0);
    end

    -- Add the sprites based on their layering
    if not lowQuality then
        -- Add the foreground sprite first
        addLuaSprite('pillarsforegroun', true);
    end
    -- Add the main background sprite
    addLuaSprite('illmakeyoushake', false);
    addLuaSprite('silly_main', false);
end
