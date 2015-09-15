global.hpCur        = 0
global.enemySpawner = 0
hpMax    = 10
enemyMax = 10
hpTimer  = room_speed * 1.5
eneTimer = room_speed * 3

alarm[0] = hpTimer
alarm[1] = eneTimer


global.myList = ds_list_create();
//randomly pick one of the objects
with(obj_spawner_parent)
{
    ds_list_add(global.myList, id);
}

ds_list_shuffle(global.myList)
with (ds_list_find_value(global.myList, 0))
    {canSpawn = true}

with (ds_list_find_value(global.myList, 1))
    {canSpawn = true}

with (ds_list_find_value(global.myList, 2))
    {canSpawn = true}

with (ds_list_find_value(global.myList, 3))
    {canSpawn = true}

with (ds_list_find_value(global.myList, 4))
    {canSpawn = true}
