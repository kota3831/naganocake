class Public::HomesController < ApplicationController
  before_action :authenticate_customer!, except: [:top, :about]
end
