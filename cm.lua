function piepan.onConnect()
    print ("cm module loaded")
math.randomseed( os.time() )
end

nouns = {
"Scrawny",
"mumble",
"refugeegaming",
"RefBot",
"Argyle",
"Fame",
"Cruelnoise",
"MeltedUFO",
"the counter-strike channel",
"Foxy",
"MrMustard",
}


charges = {
   "shitposting on the forums",
   "embedding too many images in chat",
   "existing",
   "gross incompetence",
   "having sex with " .. nouns[math.random(11)],
   "setting fire to " .. nouns[math.random(11)],
   "deploying mini-sentries",
   "banning " .. nouns[math.random(11)],
   "saying the word moist",
   "improper conduct with " .. nouns[math.random(11)],
}


punishments = {
   "be Argyle's server op slave for all eternity.",
   "eat all of your hats.",
   "lick " .. nouns[math.random(11)] .. " clean",
   "listen to ProfessorZ make bad jokes for 24 hours.",
   "listen to a dubstep mix",
   "listen to Puddsy talk about keyboards for one full hour.",
   "play cp_orange as a pyro.",
   "play moonbase alpha as without text to speech.",
   "purchase a month's worth of pizza for Ogg Vorbis.",
   "ride Scrawny's train until the end of time.",
}



s = function (sleep)
  os.execute("sleep " .. tonumber(10))
end

j = function (judge)
if math.random(10) > 3
then
      piepan.me.channel:send("You have been found guilty of " ..  charges[math.random(10)] .. " and are sentenced to " .. punishments[math.random(10)])

else
piepan.me.channel:send("You have been found innocent, have a nice day :)")

end
 end

function piepan.onMessage(message)

        local command = string.find(message.text, "!courtmartial")

        if message.user == nil

        then

                return

        else

            

                if command == 1

                then
			local target = string.sub(message.text, 15)
			piepan.me.channel:send("Throwing " .. target .. " in the brig to await charges.")
                  		s()

                                j()

                        end

                end

       

        end


 


