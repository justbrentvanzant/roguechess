/// @description Change Background
MENU_SPAWN_TIMER = 4; 
scrChangeBackground(objColorManager.th1b1);
nextSpawnX = 0; 
nextSpawnY = 0; 

//set a reference for current and next slide
currentSlide = noone;
nextSlide = noone;
menuSlide = noone;

dailyCount = 0;
dailyArray[0] = noone;
freeArray[0] = noone;
freeCount = 0;

alarm[0] = MENU_SPAWN_TIMER;