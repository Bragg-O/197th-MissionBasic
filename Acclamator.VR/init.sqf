/*
	    Author: Bragg for 197th Compagnie Chimaera
	
	    Description: Please do not [Copy, Modify, Plagiarize] the following content without prior authorization from its creator.
	    
	    Website: [www.197th.fr]
*/
/* ============================================================================ */
/* vvvvvvvvvvvvvvvvvvvvvvvvvvv You can edit here vvvvvvvvvvvvvvvvvvvvvvvvvvvv */
/* ============================================================================ */
	
_DoNotDisplayForCurators = [ // Make all players' curators editable for all objects except those in _DoNotDisplayForCurators.
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
	
/*
	Put your initialization scripts here.
*/

/* ============================================================================ */
/* vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv do not touch vvvvvvvvvvvvvvvvvvvvvvvvvvvvvv */
/* ============================================================================ */
	
// Execute the initialization script.
	[] execVM "\197th_Core\Init\Init.sqf";
	
/*
	This is the main loop of the script.
	It keeps running as long as there is at least one player in the game.
*/
while { true } do {
	sleep 60;
	// loop as long as there is at least one player in the game.
	while { count allPlayers > 0 } do {
		// set the maximum weight carryable and draggable by ACE.
		ace_maxWeightCarry = 3500;
		ace_maxWeightDrag = 5000;

		{
			_x addCuratorEditableObjects [allPlayers, true];
			_x removeCuratorEditableObjects [_DoNotDisplayForCurators, true];
		} forEach allCurators;

		// sleep for 20 seconds before executing the next iteration of the loop.
		sleep 20;
	};
};