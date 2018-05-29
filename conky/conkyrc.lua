conky.config = {
	use_xft= true,
	xftalpha= .1,
	update_interval= 1,
	total_run_times= 0,

	background= true,

	own_window= true,
	own_window_type= 'desktop',
	own_window_transparent= true,
	own_window_hints= 'undecorated,below,sticky,skip_taskbar,skip_pager',
	own_window_colour= '000000',
	own_window_argb_visual= true,
	own_window_argb_value= 0,

	double_buffer= true,

	minimum_width= 270,
	maximum_width= 270,

	minimum_height= 10,

	draw_shades= false,
	draw_outline= false,
	draw_borders= false,
	draw_graph_borders= false,

	default_color= 'FFFFFF',
	default_shade_color= '333333',
	default_outline_color= 'black',
	color1 = 'CCCCCC',
	color3 = '616161',

	alignment= 'top_right',
	gap_x= 56,
	gap_y= 0,
	no_buffers= true,
	text_buffer_size = 2048,
	uppercase= false,
	cpu_avg_samples= 4,
	net_avg_samples = 2,
	override_utf8_locale= true,

	font= 'Ubuntu:style=medium:size=9',

	lua_load = '~/.conky/custom/custom.lua',
}

conky.text = [[

${color1}
${voffset 10}
${alignr}${font Ubuntu:style=Medium:pixelsize=50}${time %H:%M}${font}
${voffset 5}
${alignr}${font Ubuntu:style=Medium:pixelsize=13}${time %A %d %B %Y}${font}
${voffset 10}

${font FontAwesome}${font}  PUBLIC IP ${alignr}${lua_parse conky_public_address}

${font FontAwesome}${font}   CPU
${hr}
${voffset 4}CPU 1: ${cpu cpu1}% ${alignr}${cpubar cpu1 12,120}
${voffset 4}CPU 2: ${cpu cpu2}% ${alignr}${cpubar cpu2 12,120}
${voffset 4}CPU 3: ${cpu cpu3}% ${alignr}${cpubar cpu3 12,120}
${voffset 4}CPU 4: ${cpu cpu4}% ${alignr}${cpubar cpu4 12,120}
${voffset 4}CPU 5: ${cpu cpu4}% ${alignr}${cpubar cpu5 12,120}
${voffset 4}CPU 6: ${cpu cpu4}% ${alignr}${cpubar cpu6 12,120}
${voffset 4}CPU 7: ${cpu cpu4}% ${alignr}${cpubar cpu7 12,120}
${voffset 4}CPU 8: ${cpu cpu4}% ${alignr}${cpubar cpu8 12,120}

${voffset 4}${top name 1}${alignr} ${top pid 1} ${top mem 1}
${voffset 4}${top name 2}${alignr} ${top pid 2} ${top mem 2}
${voffset 4}${top name 3}${alignr} ${top pid 3} ${top mem 3}
${voffset 4}${top name 4}${alignr} ${top pid 4} ${top mem 4}

${font FontAwesome}${font}   MEMORY
${hr}
${voffset 4}${memperc}%/${memmax} ${alignr}${membar 12, 120}

${voffset 4}${top_mem name 1}${alignr} ${top_mem pid 1} ${top_mem mem 1}
${voffset 4}${top_mem name 2}${alignr} ${top_mem pid 2} ${top_mem mem 2}
${voffset 4}${top_mem name 3}${alignr} ${top_mem pid 3} ${top_mem mem 3}
${voffset 4}${top_mem name 4}${alignr} ${top_mem pid 4} ${top_mem mem 4}

${font FontAwesome}${font}   HARD DRIVE
${hr}
${voffset 2}Root
${voffset 4}${fs_used /}/${fs_size /} ${alignr}${fs_free /} Free   ${fs_bar 8,60 /}

${voffset 2}Home
${voffset 4}${fs_used /home}/${fs_size /home} ${alignr}${fs_free /home} Free   ${fs_bar 8,60 /home}

]]

