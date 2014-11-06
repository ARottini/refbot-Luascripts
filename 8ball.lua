function piepan.onConnect()
    print ("8ball module loaded")
end

responses = {
   "As I see it, yes",
   "It is certain",
   "It is decidedly so",
   "Most likely",
   "Outlook good",
   "Signs point to yes",
   "Without a doubt",
   "Yes",
   "Yes - definitely",
   "You may rely on it",
   "Reply hazy, try again",
   "Ask again later",
   "Better not tell you now",
   "Cannot predict now",
   "Concentrate and ask again",
   "Don't count on it",
   "My reply is no",
   "My sources say no",
   "Outlook not so good",
   "Very doubtful",
}

e = function (eight_ball)
      piepan.me.channel:send( responses[math.random(20)] )
end
 

function piepan.onMessage(message)

        local command = string.find(message.text, "!8ball")

        if message.user == nil

        then

                return

        else

              

                if command == 1

                then

                                e()

                        end

                end

       

        end


 


