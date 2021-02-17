MsgBox "[Klicke auf ok um zu beginnen]",0,"Spambot by abdullah"

set shell = createobject ("wscript.shell")

strtext = inputbox ("Tipp ein was gespamt werden soll")
strtimes = inputbox ("Wie oft soll gespamt werden ? wie viele Wörter")
strspeed = inputbox ("Wie schnell soll gespamt werden ? (1000 = eine pro sek, 100 = 10 pro Sekunde/ 1 ist die höchste Geschw. keit)")
strtimeneed = inputbox ("In wie vielen Sek soll gespamt werden ?")

If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "Du hast den Spambot, unerwartet beendet. Spambot beendet"
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "Du hast " & strtimeneed & " Sekunden Zeit, dann wird gespamt ."
wscript.sleep strtimeneed2
shell.sendkeys ("Shutdowns Spambot aktiviert" & "{enter}")
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
shell.sendkeys ("Spam end" & "{enter}")
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Soll erneut, gespamt werden?(klick Ja o Nein",36)
If returnvalue=6 Then
msgbox "Ok Spambot wird erneut, aktiviert"
End If
If returnvalue=7 Then
msgbox :D
wscript.quit
End IF
loop