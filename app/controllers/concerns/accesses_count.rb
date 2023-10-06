module AccessesCount

    private

    def set_access_counter
        if session[:counter].nil?
            session[:counter] = 0
        end

        session[:counter]
    end
end