data remove storage minecraft:animation RecordSettings
data remove storage minecraft:animation Event
data remove storage minecraft:animation Edit
data merge storage minecraft:animation {RecordSlot:{},APIMode:0,Bukkit:0,DPCheck2:1,RecordSettings:{},Event:{},Animation:[],EditAnimation:[],DelAnimation:[],Length:0,TempFrame:[],TempAnimation:{id:0,Name:"",Length:0,Frames:[]},idList:[],Menu:[],MenuData:{1:{},2:{},3:{},4:{},5:{}}}
data modify storage minecraft:animation DefaultSettings set value {id:0,Name:"Missing Name",Length:0,Frames:[],Loop:0,Relative:0,Beginning:0,Manual:0,Sync:0,Frequency:0,Reverse:0,Speed:0,Position:1,Rotation:1,Item:1,Placed:1,Broken:1,Spawned:1,Sneaking:1}
scoreboard objectives remove record
scoreboard objectives remove menu
scoreboard objectives remove edit
scoreboard objectives remove item
scoreboard objectives remove import
scoreboard objectives remove copy
scoreboard objectives remove paste
scoreboard objectives remove delete
scoreboard objectives remove settings
scoreboard objectives remove animation
scoreboard objectives remove score

scoreboard objectives remove rc_leave
scoreboard objectives remove rc_shift
scoreboard objectives remove rc_click
scoreboard objectives remove rc_frames
scoreboard objectives remove rc_menu
scoreboard objectives remove rc_time
scoreboard objectives remove rc_id
scoreboard objectives remove rc_pos_x
scoreboard objectives remove rc_pos_y
scoreboard objectives remove rc_pos_z
scoreboard objectives remove rc_event