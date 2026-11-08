#Requires AutoHotkey v2.0
#SingleInstance Force

MsgBox "Ready.`nCopy a link with Shift+Click, then press F1"

F1:: {
    if WinExist("MultiAlt") {
        WinActivate("MultiAlt")
        Sleep 250
        Send "^v"
        Sleep 400
        Send "{Enter}"
        ToolTip "Pasted + Joined"
        SetTimer(() => ToolTip(), -1500)
    } else {
        MsgBox "MultiAlt is not open"
    }
}
