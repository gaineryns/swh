class PlainpageController < ApplicationController

  before_action :confirm_logged_in


  def index
    flash[:success ] = "Success Flash Message: Welcome to swh wms"
    #other alternatives are
    # flash[:warn ] = "Israel don't quite like warnings"
    #flash[:danger ] = "Naomi let the dog out!"
  end

end
