class SeveritiesController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /severities
  # GET /severities.json
  def index
    @severities = Severity.all
  end

end
