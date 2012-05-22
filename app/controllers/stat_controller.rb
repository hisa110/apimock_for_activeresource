class StatController < ApplicationController
  def code
    unless params[:id].nil?
       if params[:id] =~ /^[0-9]+$/
        $response_code=params[:id]
        render :json => 'set HTTP response code: ' + $response_code
       else
         render :json => "error"
       end
    else
      render :json => $response_code
    end
  end

  
end
