class RequestCallbacksController < ApplicationController
  before_action :find_request, only: %i[update]

  def create
    @request = RequestCallback.create(request_callback_params)
  end

  def update
    @request = @request_callback.update(request_callback_params)
  end

  private

  def find_request
    @request_callback = RequestCallback.find_by(id: params[:id])
  end

  def request_callback_params
    params.require(:request_callback).permit(:phone_number, :best_time_to_call, :insurance_id)
  end
end
