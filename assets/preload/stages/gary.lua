scale = 1.7

function onCreate()
	makeLuaSprite('bg', 'gary', -500, -350);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', scale, scale)
	addLuaSprite('bg', false);
	close(true); 
end