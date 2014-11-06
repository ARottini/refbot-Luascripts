function piepan.onConnect()
    print ("dice module loaded")
end
 
--neutered options for now
function piepan.onMessage(message)
        local command = string.find(message.text, "!roll")
        if message.user == nil
        then
                return
        else
                --do !roll logic here
                if command == 1
                then
                        local number = tonumber(string.match(message.text,"%d+"))
                        if number >= 1 and number <= 1000000000
                        then
                                piepan.me.channel:send(dice.roll(1, number))
                        end
                end
       
        end
end
 
function make_dice_module()
   local dice = {}
   local rand = math.random
 
   dice.roll = function(number, sides, modifier)
                  modifier = modifier or 0
                  if number <= 0 then return modifier
                  else
                     return dice.roll(number-1, sides, modifier + rand(sides))
                  end
               end
 
   return dice
end
 
dice = make_dice_module()

