///@description change mode of camera
///@arg mode
///@arg following/xTo
///@arg yTo

with (objCamera)
{
	mode = argument[0];
	
	switch(mode)
	{
		case cammode.move_to_target:
			xTo = argument[1];
			yTo = argument[2];
			break;
			
		case cammode.follow_object:
		case cammode.move_to_follow_object:
			following = argument[1];
			break;
	}
}