// Movement vars
lKey = ord("A");
rKey = ord("D");
vLKey = virtual_key_add(0, 1080 - 540, 180, 540, lKey);
vRKey = virtual_key_add(360, 1080 - 540, 180, 540, rKey);
uKey = ord("W");
dKey = ord("S");
vUKey = virtual_key_add(0, 1080 - 540, 540, 180, uKey);
vDKey = virtual_key_add(0, 1080 - 180, 540, 180, dKey);
hspd = 0;
vSpd = 0;
genSpd = 5;

/*
virtual_key_show(vLKey);
virtual_key_show(vRKey);
virtual_key_show(vUKey);
virtual_key_show(vDKey);
