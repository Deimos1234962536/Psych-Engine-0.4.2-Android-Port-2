function onCreate()
	makeLuaSprite('bg', 'toontown/bg', -600, -400);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.4, 1.4)
	addLuaSprite('bg', false);
	
	makeLuaSprite('fg', 'toontown/fg', -600, -400);
	setLuaSpriteScrollFactor('fg', 1, 1);
	scaleObject('fg', 1.4, 1.4)
	addLuaSprite('fg', false);
	
	if not lowQuality then
		makeAnimatedLuaSprite('fgBop', 'toontown/fgBop', -600, -400);
		addAnimationByPrefix('fgBop', 'idle', 'fg bop', 24, false);
		scaleObject('fgBop', 1.4, 1.4)
	    removeLuaSprite('fg');
	end

	addLuaSprite('fgBop', false);
end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('fgBop', 'idle', true);
	end
end