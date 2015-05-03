/*
	File: fn_fadeSound.sqf
	Auhtor: Michael Francis

	Description:
	Fades out sound.
*/
life_fadeSound = !life_fadeSound;

if (life_fadeSound) then
{
	1 fadeSound 0.25; // Faded to 25%
	titleText ["Ohrstoepsel Rein", "PLAIN"];
}
else
{
	1 fadeSound 1; // Returned to 100%
	titleText ["Ohrstoepsel Raus", "PLAIN"];
};