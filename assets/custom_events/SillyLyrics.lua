function onEvent(name, value1, value2)
    if name == 'ill make' then
        setTextString('lyric', value1)
        setTextColor('lyric', 0xFFcfa92d)
        setObjectOrder("lyric", 10)
    end
end

function onCreatePost()
    setObjectCamera('lyric', 'Other')
    makeLuaText('lyric', '', screenWidth, 0, 660)
    -- setObjectOrder("lyric", 100) -- Commented out as it's already set in onEvent
    addLuaText('lyric')
    setTextColor('lyric', 0xFFcfa92d) -- Removed quotes around color code
    setTextFont('lyric', 'Times New Roman.ttf')
    setTextSize('lyric', 48)
end
