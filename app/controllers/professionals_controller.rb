class ProfessionalsController < ApplicationController

  def profs
    @professionals = Professional.all
  end
end
