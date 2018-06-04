class FrequenciesController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /frequencies
  # GET /frequencies.json
  def index
    @frequencies = Frequency.all
  end

end
