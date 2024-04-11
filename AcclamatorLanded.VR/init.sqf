/*
	    Author: Bragg for 197th Compagnie Chimaera
	
	    Description: Please do not [Copy, Modify, Plagiarize] the following content without prior authorization from its creator.
	    
	    Website: [www.197th.fr]
*/

// init ALL 197th Forced Script
[] execVM "\197th_Core\197th_Core.sqf";

// Init for Server only
if (isServer) then {
	setWind [1, 1, true];
};

// This script will run all 30s for all time if the player is connected
while { true } do {
	while { count allPlayers > 0 } do {
		// Carry and Drag
		ace_maxWeightCarry = 3500;
		ace_maxWeightDrag = 5000;
		// Add allPlayers and vehules to allCurators and remove the _DoNotDisplayForCurators list
		_DoNotDisplayForCurators = [
			VehiculeDeco_0,
			VehiculeDeco_1,
			VehiculeDeco_2,
			VehiculeDeco_3,
			VehiculeDeco_4,
			VehiculeDeco_5,
			VehiculeDeco_6,
			VehiculeDeco_7,
			VehiculeDeco_8,
			VehiculeDeco_9,
			VehiculeDeco_10,
			VehiculeDeco_11,
			VehiculeDeco_12,
			VehiculeDeco_13,
			VehiculeDeco_14,
			VehiculeDeco_15,
			VehiculeDeco_16,
			VehiculeDeco_17,
			VehiculeDeco_18,
			VehiculeDeco_19,
			VehiculeDeco_20,
			VehiculeDeco_21,
			JaMal,
			LoadUnits_0,
			LoadUnits_1,
			LoadUnits_2,
			LoadUnits_3,
			LoadUnits_4,
			LoadUnits_5,
			LoadUnits_6,
			LoadUnits_7,
			LoadUnits_8,
			LoadUnits_9,
			LoadUnits_10,
			LoadUnits_11,
			ArsenalBox_0,
			ArsenalBox_1,
			ArsenalBox_2,
			ArsenalBox_3
		];
		{
			_x addCuratorEditableObjects [allPlayers, true];
			_x removeCuratorEditableObjects [_DoNotDisplayForCurators, true];
		} forEach allCurators;
		sleep 10;
	};
	sleep 60;
};