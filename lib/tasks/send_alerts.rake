namespace :alerts do 
    task :send_alerts => :environment do 

        
        payload = {}
        payload[:content] = 'Water your plants'
        payload.to_json
        
        webhook = "https://discord.com/api/webhooks/1099267962239717426/eb9E8l_HxA7uYc2Iu5OyRgqxQicil61q4ynLj1UZWeEI5pLNjhhgBasO4SNQyA3-SMhL"
    
        HTTParty.post( webhook, body: payload.to_json, headers: { 'Content-Type' => 'application/json' })
    end
end