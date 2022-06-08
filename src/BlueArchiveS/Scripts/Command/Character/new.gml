var name, i;
name = argument0
i = instance_create(x, y, Character)

if name = "" return i

i.name  = ds_map_find_value(charName, name)
i.affi  = ds_map_find_value(charAffi, name)
i.body  = ds_map_find_value(charBody, name)
i.face  = ds_map_find_value(charFace, name)
i.halo  = ds_map_find_value(charHalo, name)
i.extra = ds_map_find_value(charExtr, name)
i.expr  = ds_map_find_value(charExpr, name)

return i
