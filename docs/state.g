digraph StateActions {
	rankdir=LR;
	node [ shape = point ];
	ENTRY;
	en_9;
	en_14;
	en_2;
	en_4;
	node [ shape = circle, height = 0.2 ];
	node [ fixedsize = true, height = 0.65, shape = doublecircle ];
	14;
	node [ shape = circle ];
	1 -> 2 [ label = "ACCEPT / parse" ];
	2 -> 14 [ label = "CLOSE / close" ];
	2 -> 3 [ label = "REQ_RECV / identify_request" ];
	3 -> 4 [ label = "HTTP_REQ / route_request" ];
	3 -> 8 [ label = "MSG_REQ / route_request" ];
	3 -> 5 [ label = "SOCKET_REQ / send_socket_response" ];
	4 -> 14 [ label = "CLOSE / close" ];
	4 -> 5 [ label = "DIRECTORY / http_to_directory" ];
	4 -> 6 [ label = "HANDLER / http_to_handler" ];
	4 -> 7 [ label = "PROXY / http_to_proxy" ];
	5 -> 14 [ label = "CLOSE / close" ];
	5 -> 2 [ label = "RESP_SENT / parse" ];
	6 -> 2 [ label = "REQ_SENT / parse" ];
	8 -> 6 [ label = "HANDLER / msg_to_handler" ];
	9 -> 10 [ label = "CONNECT / proxy_deliver" ];
	9 -> 11 [ label = "FAILED / proxy_failed" ];
	10 -> 11 [ label = "REMOTE_CLOSE / proxy_close" ];
	10 -> 13 [ label = "REQ_SENT / proxy_parse" ];
	11 -> 12 [ label = "CLOSE / proxy_exit_idle" ];
	13 -> 12 [ label = "DIRECTORY, HANDLER, PROXY / proxy_exit_routing" ];
	13 -> 10 [ label = "HTTP_REQ / proxy_deliver" ];
	13 -> 11 [ label = "REMOTE_CLOSE / proxy_close" ];
	14 -> 1 [ label = "OPEN / open" ];
	ENTRY -> 14 [ label = "IN" ];
	en_9 -> 9 [ label = "Proxy" ];
	en_14 -> 14 [ label = "main" ];
	en_2 -> 2 [ label = "main_Connection_Idle" ];
	en_4 -> 4 [ label = "main_Connection_HTTPRouting" ];
}
