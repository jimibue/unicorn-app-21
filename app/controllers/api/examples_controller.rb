class Api::ExamplesController < ApplicationController

    def all_bitzs
        render json: Bitz.all_bitzs
    end

    def all_trustees
        render json: Trustee.trustees_list
    end
end
