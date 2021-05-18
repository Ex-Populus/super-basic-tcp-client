/// @description State machine

type = ds_map_find_value(async_load, "type");

switch(type) {
	
	case network_type_connect:
		socket = ds_map_find_value(async_load, "socket");
		socket_id = ds_map_find_value(async_load, "id");
		ds_list_add(sockets, socket);
		show_debug_message("=====> !! connect " + string(socket_id));
		break;
		
	case network_type_disconnect:
		socket = ds_map_find_value(async_load, "socket");
		socket_id = ds_map_find_value(async_load, "id");
		ds_list_delete(sockets, socket);
		show_debug_message("=====> !! disconnect " + string(socket_id));
		break;
		
	case network_type_data:
		buffer = ds_map_find_value(async_load, "buffer");
		socket_id = ds_map_find_value(async_load, "id");
		show_debug_message("=====> !! data " + string(socket_id));
		handle_server_data(buffer);
		break;
		
	default:
		show_debug_message("=====> !! UNKNOWN ASYNC LOAD TYPE");
	
}