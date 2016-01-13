[] spawn {
	// Add a line in this array to add a message
	_messages = [ 
		"Please Enjoy your stay, and obey the rules! AlWAYS STAY IN CHARACTER:<br/> <t color='#e32828' size='1.5'>www.intgamer.net.</t>",
		"Cops Must be on Teamspeak est:<br/><t color='#e32828' size='1'>ts.intgamer.net</t></br>"
	];

	_refreshTime = 300; // Time between each message (in seconds)

	_i = 0;
	while {true} do {
		_count = count _messages;
		_message = _messages select _i;
		hint parseText format["<t color='#ffffff' size='1.5'>IG</t><t color='#c45454' size='1'>Life</t><br/><br/><img shadown='false' size='6' image='images\logo.paa'/><br/><br/>%1", _message];
		sleep _refreshTime;
		if (_i == (_count - 1)) then {
			_i = 0;
		} else {
			_i = _i + 1;
		};
	};
};