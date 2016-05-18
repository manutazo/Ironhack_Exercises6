class Api::BarbecuesController < ApplicationController

  def show
    barbecue = Barbecue.find_by(id: params[:id])
		unless barbecue
			render json: { error: "barbecue not found"}, status: 400
			return
		end
		render json: barbecue
  end

  def join
  user = current_user.push(barbecues)
end
