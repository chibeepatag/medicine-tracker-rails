class OrgansController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /organs
  # GET /organs.json
  def index
    @organs = Organ.all
  end

end
