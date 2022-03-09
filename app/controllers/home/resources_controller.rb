class Home::ResourcesController < ApplicationController
  before_action :set_resource_field, only: %i[ show edit update destroy ]
end