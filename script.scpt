on dateISOFormat(theDate)
	set y to year of theDate as text
	set m to text -2 thru -1 of ("00" & (month of theDate as integer))
	set d to text -2 thru -1 of ("00" & (day of theDate))
	set h to text -2 thru -1 of ("00" & (hours of theDate))
	set n to text -2 thru -1 of ("00" & (minutes of theDate))
	set s to text -2 thru -1 of ("00" & (seconds of theDate))
	return y & "-" & m & "-" & d & "T" & h & ":" & n & ":" & s
end dateISOFormat

on dateUnixFormat(theDate)
	set y to year of theDate as text
	set m to text -2 thru -1 of ("00" & (month of theDate as integer))
	set d to text -2 thru -1 of ("00" & (day of theDate))
	set h to text -2 thru -1 of ("00" & (hours of theDate))
	set n to text -2 thru -1 of ("00" & (minutes of theDate))
	set s to text -2 thru -1 of ("00" & (seconds of theDate))
	return m & "/" & d & "/" & y & space & h & ":" & n & ":" & s
end dateUnixFormat

on dateEvernoteFormat(theDate)
	set y to year of theDate
	set m to month of theDate as text
	set d to day of theDate
	set timeString to time string of theDate
	set AppleScript's text item delimiters to " "
	set clock to text item 1 of timeString
	set am_pm to text item 2 of timeString
	set AppleScript's text item delimiters to ":"
	set h to text item 1 of clock
	set n to text item 2 of clock
	return m & " " & d & ", " & y & " at " & h & ":" & n & " " & am_pm
end dateEvernoteFormat
