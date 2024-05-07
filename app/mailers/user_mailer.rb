class UserMailer < ApplicationMailer
  default from: ENV['MAILJET_DEFAULT_FROM']

  def welcome_email(user)
    # On récupère l'instance user pour ensuite pouvoir la passer à la vue en @user
    @user = user

    # On définit une variable @url qu'on utilisera dans la vue d’e-mail
    @url  = 'http://localhost:3000/login'

    # C'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
