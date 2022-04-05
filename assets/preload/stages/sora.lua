function onCreate()
	makeLuaSprite('bg', 'kh/sora', -570, -500);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 0.8, 0.8)
	
	makeLuaSprite('crate', 'kh/crate', 650, 450);
	setLuaSpriteScrollFactor('crate', 1, 1);
	scaleObject('crate', 0.8, 0.8)
	
	makeAnimatedLuaSprite('woman', 'kh/kiwi', 800, 420);
	addAnimationByPrefix('woman', 'kiwi', 'idle', 24, false);
	scaleObject('woman', 0.6, 0.6);
	
	makeAnimatedLuaSprite('disney', 'kh/losers', 80, 200);
	addAnimationByPrefix('disney', 'losers', 'nerds idle', 24, false);
	scaleObject('disney', 0.55, 0.55);
	
	addLuaSprite('bg', false);
	addLuaSprite('crate', false);
	addLuaSprite('disney', false);
	addLuaSprite('woman', false);
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('woman', 'kiwi', true);
		objectPlayAnimation('disney', 'losers', true);
	end
end