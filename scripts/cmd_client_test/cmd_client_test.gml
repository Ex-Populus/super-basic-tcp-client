/// @function cmd_client_test(data, buffer);
/// @param {json} data The command data

function cmd_client_test(_data) {
	value = {
		command: "client-test",
		data: _data,
	};
	
	return json_stringify(value);
}