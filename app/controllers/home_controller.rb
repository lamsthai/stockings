class HomeController < ApplicationController
  def index
  	@api = StockQuote::Stock.new(api_key: 'pk_f58f7394e4424ae7adf6ed4b09d3d6cb')

  	if params[:ticker] 
  		if params[:ticker] == ""
  			@nothing = "forget to input the company"
  		else
  			begin
  		       @stock = StockQuote::Stock.quote(params[:ticker])
  		    rescue =>   error
  		    
  		    	@error = params[:ticker] + ": " + error.message
  		    end
  		    
  		end
  	end
  end

  def about
  end
end
