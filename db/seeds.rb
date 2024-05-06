# Liste de noms fictifs
names = ["alice", "bob", "charlie", "dave", "emma", "frank", "grace", "henry", "isabella", "jack"]

10.times do |i|
  User.create!(
    email: "user#{i + 1}@yopmail.com",
    encrypted_password: "password", # Remplace cela par le mot de passe chiffré si nécessaire
    description: "Description de l'utilisateur #{i + 1}",
    first_name: "Prénom#{i + 1}",
    last_name: "Nom#{i + 1}"
  )
end
