class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.order("created_at DESC").group_by(&:day)
  end
end
