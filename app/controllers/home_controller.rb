class HomeController < ApplicationController

  layout 'home'

  def index
    
  end

  def findCity
    @states = CS.states(:us)
    @cities =  []
    @states.each do |key, array|
      @cities.push({ array => CS.cities(key.to_sym) })
    end
    render status: 200, json: {
        message: 'Success!',
        data_output: @cities
    }
  end
end
