class Api::V1::ApplicationController < ActionController::Base

  def render_response(render_params)
    # controller_name, action_name will give you controller and action which rendered the response.
    # so you can decide weather to process anything or just render

    render_params[:json] = { payload: render_params[:json] }
    render render_params
  end

end