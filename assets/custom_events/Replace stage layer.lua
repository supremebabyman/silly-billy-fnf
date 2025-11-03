function onEvent(name, value1, value2)

	if name == 'Replace stage layer' then

		stage1 = value1;

        doTweenAlpha('stageAppear', stage1, 1, 1.0, 'expoOut');

		stage2 = value2;

		doTweenAlpha('stageGone', stage2, 0, 0.2, 'expoOut');

	end

end