class DlAPI < Grape::API
    version 'v1', using: :header, vendor: 'elladali'
    format :json
    # prefix :mygod
    
    helpers do 
    end

    resource :requests do 
        desc 'GET it'
        get '/' do 
            {x:3}
        end
    end

end