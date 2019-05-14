Set oShell = CreateObject( "WScript.Shell" )
msg=oShell.ExpandEnvironmentStrings("%OPENVPN_MSG%")
MsgBox msg, , "Welcome"
