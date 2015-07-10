class PagesController < ApplicationController
  def home
    if current_user
      redirect_to users_path
    end
  end
  def login
  end
  def signup
  end
  def step2
  end
  def advisors
  end
  def students
  end
  def student
  end
  def advisor
  end
end
