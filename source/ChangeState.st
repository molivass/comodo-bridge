IF Is_Monitoring <> Previous_Monitor_State OR Is_Moving_Linear <> Previous_Movement_State THEN
	Temp_Output := Robot_In;
	IF Is_Monitoring THEN 
		Temp_Output := Temp_Output OR Monitor_Bit;
	ELSE
		Temp_Output := Temp_Output AND (NOT Monitor_Bit);
	END_IF;
	
	IF Is_Moving_Linear THEN
		Temp_Output := Temp_Output OR Movement_Bit;
	ELSE
		Temp_Output := Temp_Output AND (NOT Movement_Bit);
	END_IF;
		
	Previous_Monitor_State := Is_Monitoring;
	Previous_Movement_State := Is_Moving_Linear;
	
	Robot_In := Temp_Output;
END_IF;