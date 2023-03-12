class TestapiController < ActionController::API
    def hello
        numbers = [1,2,3,4,5]
        @a = '1'
        render json: numbers.sample(2)
    end
end