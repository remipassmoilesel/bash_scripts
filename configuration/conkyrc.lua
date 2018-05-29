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
	color1 = 'A9A9A9',
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

	font= 'Ubuntu:style=medium:size=9'
}

conky.text = [[

${color1}
${voffset 20}
${alignr}${font Ubuntu:style=Medium:pixelsize=50}${time %H:%M}${font}
${voffset 10}
${alignr}${font Ubuntu:style=Medium:pixelsize=13}${time %A %d %B %Y}${font}

${voffset 400}
${font FontAwesome}${font} ${alignr}${addrs enp3s0}
${hr}
${font FontAwesome}${font} ${alignr}${exec curl ipinfo.io/ip}

${font FontAwesome}${font}   disques ${alignr}${hddtemp /dev/sda}°.${hddtemp /dev/sdb}°.${hddtemp /dev/sdc}°
#.${hddtemp /dev/sdd}°.${hddtemp /dev/sde}°.${hddtemp /dev/sdf}°.
${hr}
${font FontAwesome}${font}   CPU ${alignr}${hwmon 0 temp 1}°.${hwmon 0 temp 2}°.${hwmon 0 temp 3}°
${font FontAwesome}${font}   ventilo ${alignr}${hwmon 0 fan 1} tour/min
${color3}${cpugraph cpu1 50,133 5e7b7b d8deeb -t} ${cpugraph cpu2 50,133 5e7b7b d8deeb -t}
${cpugraph cpu3 50,133 5e7b7b d8deeb -t} ${cpugraph cpu4 50,133 5e7b7b d8deeb -t}

${color3}${downspeedgraph enp3s0 50,269 5e7b7b d8deeb}
${color1}${font FontAwesome}${font}   download ${alignr}${downspeedf enp3s0}k/s (${totaldown enp3s0})
${hr}
${font FontAwesome}${font}   upload ${alignr}${upspeedf enp3s0}k/s (${totalup enp3s0})
${color3}${upspeedgraph enp3s0 50,269 99c8e8 618094}

]]