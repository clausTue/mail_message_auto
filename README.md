# mail_message_auto
applescript to generate email with defined recipient, sender email, and gpg encryption selected


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