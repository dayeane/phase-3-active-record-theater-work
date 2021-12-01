
r1= Role.create(character_name: "The Loyal Family of Monaco")

a1=Audition.create( actor: "Grace", location: "LA", phone: 456089, hired: false, role_id: r1.id)
a2=Audition.create( actor: "Salvatore", location: "LA", phone: 499989, hired: false, role_id: r1.id)

