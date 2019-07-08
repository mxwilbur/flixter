class LessonsController < ApplicationController
  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @cureent_lesson ||= Lesson.find(params[:id])
  end
end