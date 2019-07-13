class LessonsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :require_enrolled_for_current_course, only: [:show]

  def show
  end

  private

# if current_course.user != current_user

  def require_enrolled_for_current_course
    if current_course.user != current_user
      redirect_to course_path(current_course), alert: 'Please enroll in course to view lesson'
    else
      redirect_to lesson_path(current_lesson)
    end
  end

  def current_course
    @current_course ||= Course.find(params[:course_id])
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

end