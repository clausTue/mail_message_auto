(*
__author__ = "Claus Haslauer <mail@planetwater.org>"

__date__ = 2015,01,10

This script does:
- opens a new mail message (OSX)
- fills subject
- fills the recipient
- selects the email account of the sender
- checks the [gpg](https://gpgtools.org) button

NOTE:
- Words that start with "X_" should probably be replaced

TODO:
- the delay is not very nice (system dependent at least)
- quite the hack, but works... ;-)

*)

-- selecting the sender of a mail message:    http://stackoverflow.com/questions/6638711/how-to-set-the-sender-of-the-current-mail-app-outgoing-message-via-applescript/
tell application "Mail"
	account type of account "X_ACCOUNT"
	set newMessage to make new outgoing message with properties {subject:"X_SUBJECT", content:"X_CONTENT" & return & return}
	tell newMessage
		set visible to true
		make new to recipient at end of to recipients with properties {name:"X_NAME_RECIPIENT", address:"X_EMAIL_AD_RECIPIENT"}
		set sender to "X_SENDER <X_EMAIL_AD_RECIPIENT>"
	end tell
	activate
end tell

-- to check the gpg button ('checkbox')
-- found out which group and window the gpg button is via `UI elements of window 1`, as suggested by  http://superuser.com/questions/336551/how-do-i-automate-clicking-a-button-in-an-applications-window-with-applescript
-- the original idea of being able to programmatically click buttons came from    http://stackoverflow.com/questions/7355763/using-applescript-how-do-i-click-a-button-in-a-dialog-within-a-window-that-has-n
-- great overview over using applescript with mail:    http://www.mactech.com/articles/mactech/Vol.21/21.09/ScriptingMail/index.html

delay 3 -- this delay is necessary, because it becomes active only after a little while
tell application "System Events"
	tell process "Mail"
		click checkbox 1 of group 1 of window "X_SUBJECT"
	end tell
end tell