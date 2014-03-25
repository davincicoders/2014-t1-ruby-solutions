class MainController < ApplicationController
  def login_get
    render :login and return
  end
  
  def login_post
    found_person = Person.find_by(name: params["name"])

    if found_person == nil
      flash[:error] = "Unknown username"
      redirect_to "/login" and return
    elsif found_person.authenticate(params["password"]) == false
      flash[:error] = "Wrong password"
      redirect_to "/login" and return
    else
      session[:person_id] = found_person.id
      redirect_to "/followers" and return
    end
  end
  
  def followers_get
    @person = Person.find(session[:person_id])
    render :followers and return
  end
  
  def followers_post
    @person = Person.find(session[:person_id])

    if params[:commit] == "Follow"
      name = params["name_to_follow"]
      to_person = Person.find_by(name: name)

      following = Following.new
      following.from_person_id = @person.id
      following.to_person_id = to_person.id
      following.save!
    end

    redirect_to "/followers" and return
  end
  
  def logout
    session.clear
    redirect_to "/" and return
  end
end
