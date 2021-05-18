/// @function handle_server_data(buffer);

function handle_server_data(_buffer) {
	buffer_seek(_buffer, buffer_seek_start, 0);
	var buffer_data = buffer_read(_buffer, buffer_string);
	
	var json = json_parse(buffer_data);
	var command = json.command;
	var data = json.data;
	
	switch(command) {
		case "test":
			show_debug_message("=====> DATA - " + string(data));
			break;
			
		default:
			show_debug_message("=====> UNKNOWN COMMAND - " + string(command));
			break;
	}
}