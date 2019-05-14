Set oShell = CreateObject( "WScript.Shell" )
msg1=oShell.ExpandEnvironmentStrings("%OPENVPN_MSG1%")
msg2=oShell.ExpandEnvironmentStrings("%OPENVPN_MSG2%")
MsgBox msg1 + vbcrlf + msg2, , "Welcome"
