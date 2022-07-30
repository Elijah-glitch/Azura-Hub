rconsoleclear()
local is_key_present = isfile("key_sys.txt")
if is_key_present == true then
    local kery = readfile("key_sys.txt")
    local onl_key = game:HttpGet("https://pastebin.com/raw/SvrfAU2N")
    if kery == onl_key then
        print("Executed script!")
    else
        rconsoleerr("Checking key..... Key is invalid~! Please delete the key_sys.txt in workspace folder of your executor!")
        rconsolename("Key System")
        end
else
    rconsolename("Key System")
    rconsoleprint('@@BLUE@@')
    rconsoleprint("Welcome to Key System! Thanks for using our script.")
    wait(3)
    rconsoleprint("\nTo get key, the link has been copied to your clipboard. Please paste the key here in order to continue >")
    setclipboard("https://pastebin.com/raw/SvrfAU2N")
    local key_inconsole = rconsoleinput()
    local key_onl = game:HttpGet("https://pastebin.com/raw/SvrfAU2N")
    if key_inconsole == key_onl then
        print("Executed script!")
        writefile("key_sys.txt", key_onl)
        rconsoleclear()
        rconsoleprint("Correct key! You may minimize this console now.")
    else
        rconsoleprint('@@RED@@')
        rconsoleprint("\nInvalid key! Please try again! (Restarting key system in 5 seconds....)")
        wait(5)
        rconsoleclear()
        rconsolename("Key System")
    rconsoleprint('@@BLUE@@')
    rconsoleprint("Welcome to Key System! Thanks for using our script.")
    wait(3)
    rconsoleprint("\nTo get key, the link has been copied to your clipboard. Please paste the key here in order to continue >")
    setclipboard("https://discord.gg/Qr2SPedr5d")
    local key_inconsole = rconsoleinput()
    local key_onl = game:HttpGet("https://pastebin.com/raw/SvrfAU2N")
    if key_inconsole == key_onl then
        print("Executed script!")
        writefile("key_sys.txt", key_onl)
        rconsoleclear()
        rconsoleprint("Correct key! You may minimize this console now.")
    else
        rconsoleprint('@@RED@@')
        rconsoleprint("\nInvalid key! Please try again! (Closing game in 5 seconds.....)")
        wait(5)
        game:shutdown()
    end
    end
end
