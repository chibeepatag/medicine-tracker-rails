class ReactionsController < ApplicationController
  before_action :set_organ
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /reactions
  # GET /reactions.json
  def index
    @reactions = @organ.reactions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organ
      @organ = Organ.find(params[:organ_id])
    end

end
