function onCreate()
	makeAnimatedLuaSprite('fg', 'sewers/water', -10, 0);
	addAnimationByPrefix('fg', 'anim', 'war', 24, true);
	setLuaSpriteScrollFactor('fg', 1, 1);
	scaleObject('fg', 2.2, 2.2)
	
	makeAnimatedLuaSprite('bg', 'sewers/bg', 0, 0);
	addAnimationByPrefix('bg', 'otherAnim', 'bg', 24, true);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 2.2, 2.2)
	
	addLuaSprite('bg', false);
	addLuaSprite('fg', false);
	
	if lowQuality then
		makeLuaSprite('LQbg', 'sewers/LQbg', 0, 0);
		scaleObject('LQbg', 2.2, 2.2)
		addLuaSprite('LQbg', false);
	    removeLuaSprite('fg');
		removeLuaSprite('bg');
	end
end