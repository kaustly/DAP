class DiggedWorkController < ApplicationController
  load_and_authorize_resource

def index
  @digs = current_user.digged_works
end

end
