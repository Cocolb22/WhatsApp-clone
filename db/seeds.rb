# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


corentin = User.create(first_name: "Corentin",
                    last_name: "Le Bris",
                    email: "corentin@test.com",
                    password: "password",
                    phone_number: "0624097327"
                    )

erlé = User.create(first_name: "Erlé",
                last_name: "Le Bris",
                email: "erle@test.com",
                password: "password",
                phone_number: "0633343536"
                )

gwendal = User.create(first_name: "Gwendal",
                last_name: "Le Bris",
                email: "gwendal@test.com",
                password: "password",
                phone_number: "0634353637"
                )

gireg = User.create(first_name: "Gireg",
                last_name: "Le Bris",
                email: "gireg@test.com",
                password: "password",
                phone_number: "0635363738"
                )

maela = User.create(first_name: "Maëla",
                last_name: "Le Bris",
                email: "maela@test.com",
                password: "password",
                phone_number: "0636373839"
                )

erwan = User.create(first_name: "Erwan",
                last_name: "Le Bris",
                email: "erwan@test.com",
                password: "password",
                phone_number: "0637383940"
                )

anne_france = User.create(first_name: "Anne-France",
                      last_name: "Le Bris",
                      email: "anne-france@test.com",
                      password: "password",
                      phone_number: "0638394041"
                      )

message_1_from_corentin = Message.create(conversation_id:5,
                                        user_id:1,
                                        content:"Yo gwendal, rdv au bar à 19h?")

message_1_from_gwendal = Message.create(conversation_id:5,
                                          user_id:3,
                                          content:"Viens plutôt chez moi, on se matera la ligue des champions")
message_2_from_corentin = Message.create(conversation_id:5,
                                        user_id:1,
                                        content:"Ok je ramène le saucisson et les bières")

message_3_from_corentin = Message.create(conversation_id:1,
                                          user_id:1,
                                          content:"Coucou maman, je rentre vers 23h")

message_1_from_anne_france = Message.create(conversation_id:1,
                                            user_id:7,
                                            content:"Pas de soucis, il restera du poulet dans le four")

message_4_from_corentin = Message.create(conversation_id:1,
                                        user_id:1,
                                        content:"Top merci !")

message_5_from_corentin = Message.create(conversation_id:6,
                                        user_id:1,
                                        content:"On se fait un tennis ce week-end?")

message_1_from_erle = Message.create(conversation_id:6,
                                    user_id:2,
                                    content:"Ok mais assez tôt samedi, j'ai une raclette de prévue avec des potes le soir. Tu veux venir?")

message_6_from_corentin = Message.create(conversation_id:6,
                                      user_id:1,
                                      content:"Ca marche !J'aurais bien dis oui pour la raclette, mais j'ai un match par équipe le lendemain, et faut qu'on décolle à 6h du mat...")

message_2_from_erle = Message.create(conversation_id:6,
                                      user_id:2,
                                      content:"10h ça te va ?")

message_3_from_erle = Message.create(conversation_id:6,
                                    user_id:2,
                                    content:"Pas de soucis, surtout que t'es pas le dernier à taper dans le fromage et le vin !")

message_5_from_corentin = Message.create(conversation_id:6,
                                        user_id:1,
                                        content:"Bah ouais, je fais mes réserves pour l'hiver")
