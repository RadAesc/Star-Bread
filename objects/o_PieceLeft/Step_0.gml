/// @description Kick him away!

var pl = player;
var result;

do
{
	result = rectangle_in_rectangle( x - sprite_width / 2,y - sprite_height / 2,
                                     x + sprite_width / 2,y + sprite_height / 2,
                                     pl.x - pl.sprite_width / 2,pl.y - pl.sprite_height / 2,
                                     pl.x + pl.sprite_width / 2,pl.y + pl.sprite_height / 2 );
	if( result == 1 || result == 2 )
	{
		script_execute( MovePlayerLeft );
	}
}
until( result == 0 );

if( global.mapNum > 0 )
{
	x = 9999;
}