function piepan.onConnect()
    print ("fortune module loaded")
end


function piepan.onMessage(message)

local casedown = string.lower(message.text)
    if message.user == nil
 then
return
    elseif casedown == "!fortune"
 then
local handle = io.popen("fortune fortunes")
local result = handle:read("*a")
handle:close()
piepan.me.channel:send(result)


end
end


