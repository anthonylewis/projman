class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def assignment(project, user)
    @project = project
    @user = user

    mail(:to => user.email, :subject => "Project Assignment")
  end
end
