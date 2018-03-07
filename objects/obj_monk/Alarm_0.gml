/// @description Gives control back to the player after enough time.
// You can write your code in this editor

with(currentControl)
{
	inControl = false;
}

inControl = true;
currentControl = 0;
visible = 1;
y = y -15;
