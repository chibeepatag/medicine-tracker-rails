class AntibioticsController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /antibiotics
  # GET /antibiotics.json
  def index
    @antibiotics = Antibiotic.all
  end

end
