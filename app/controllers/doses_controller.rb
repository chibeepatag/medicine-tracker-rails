class DosesController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /doses
  # GET /doses.json
  def index
    @doses = Dose.all
  end

end
