class TestController < ActionController::Base
# class TestController < ActionController::API
$global = 'global'
CONST = 'CONST'
  def hello
    STDOUT.sync = true
    numbers = [1,2,3,4,5]
    for num in numbers
      logger.error num
    end
    render json: numbers
  end

end