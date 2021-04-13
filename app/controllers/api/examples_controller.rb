class Api::ExamplesController < ApplicationController

    def all_bitzs
        render json: Bitz.all_bitzs
    end
end
