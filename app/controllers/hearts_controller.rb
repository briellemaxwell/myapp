class HeartsController < ApplicationController
  def create
    @heart = Heart.new(heart_params)

      if @heart.save
       redirect_to @heart.post, notice: 'Hearted that post.'

      else
        redirect_to root_url, notice: "Has an issue creating heart."

      end
 end

private
      # Never trust parameters from the scary internet, only allow the white list through.
    

      def heart_params
        params.require(:heart).permit(:post_id)
      end
end
