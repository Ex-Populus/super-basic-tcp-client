/// @description Open connection

app_id = "CLIENT";

port = 8996;
server_ip = "127.0.0.1";

client_socket = network_create_socket(network_socket_tcp);
client_buffer = buffer_create(1024, buffer_fixed, 1);

show_debug_message("=====> connecting to server at " + server_ip + ":" + string(port));
network_connect(client_socket, server_ip, port);
