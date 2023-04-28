namespace :alerts do 
    task :send_alerts => :environment do 
        
        # Function to work out if plant needs watering.
        def needs_watering? date_str, cycle
            
            # Gives me year month day in an array
            date = date_str.to_s.split("-")
            # unpack array
            year, month, day = date
            
            last_watered = Time.new year, month, day # take unpacked array and make it a time object
            water_cycle = cycle.to_i * 86400 # 86400 seconds in a day
            if Time.now.to_i > last_watered.to_i + water_cycle.to_i
                # p 'needs water'
                true
            else
                # p 'doesnt need water'
                false
            end
        end
        
        def post_discord message, webhook_url
            # json takes hash so create empty hash
            payload = {}
            payload[:content] = message # e.g. :content => message
            payload.to_json

            HTTParty.post( webhook_url, body: payload.to_json, headers: { 'Content-Type' => 'application/json' })
        end

        # find what journals need alerts sent.
        # get all journals
        journals = Journal.all
        # loop through all the journals
        journals.each do |j|
            # check to see if webhook URL avail
            unless j.discord.nil?

                discord = j.discord 
                # loop through plants to check if needs watering
                j.plants.each do |plant|
                    if needs_watering?(plant.last_watered, plant.cycle)
                        message = "#{plant.name} needs watering."
                        post_discord message, discord
                    end
                        
                end
            end
            
        end

    end
end