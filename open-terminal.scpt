on run {input, parameters}
    if (count of input) > 0 then
        tell application "System Events"
            set runs to false
            try
                set p to application process "Alacritty"
                set runs to true
            end try
        end tell
        tell application "Alacritty"
            activate
            if (count of terminals) = 0 then
                set t to (make new terminal)
            else
                set t to current terminal
            end if
            tell t
                tell (make new session at the end of sessions)
                    exec command ("vim \"" & POSIX path of first item of input as text) & "\""
                end tell
                if not runs then
                    terminate first session
                end if
            end tell
        end tell
    end if
end run
