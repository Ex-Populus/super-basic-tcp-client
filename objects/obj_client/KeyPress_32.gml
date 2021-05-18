/// @description Send test message to server

var test_data = {
	thing: "thing",
	stuff: "some stuff",
	blah: 6,
};
var test_command = cmd_client_test(test_data);
	
with (obj_client) {
	buffer_seek(client_buffer, buffer_seek_start, 0);
	buffer_write(client_buffer, buffer_string, test_command);
	network_send_packet(client_socket, client_buffer, buffer_tell(client_buffer));
}
