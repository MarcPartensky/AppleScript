--show where the pic is in the Finder
tell application "Finder"
	set theDesktopPic to desktop picture
	set theName to displayed name of theDesktopPic
	reveal theDesktopPic
end tell
