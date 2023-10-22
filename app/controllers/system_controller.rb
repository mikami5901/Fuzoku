class SystemController < ApplicationController
  def index
    @system = Ryokin.all
    @option_lists = OptionList.all
  end
end
