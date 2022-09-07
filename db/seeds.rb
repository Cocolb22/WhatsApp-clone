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
                                        content:"Yo gwendal, rdv au bar à 19h?",
                                        created_at:"2022-09-06 13:41:00")

message_2_from_corentin = Message.create(conversation_id:5,
                                        user_id:1,
                                        content:"Ok je ramène le saucisson et les bières",
                                        created_at:"2022-09-06 13:50:00")

message_3_from_corentin = Message.create(conversation_id:1,
                                          user_id:1,
                                          content:"Coucou maman, je rentre vers 23h",
                                          created_at:"2022-09-06 13:50:00")



                                          

message_1_from_gwendal = Message.create(conversation_id:5,
                                          user_id:3,
                                          content:"Viens plutôt chez moi, on se matera la ligue des champions",
                                          created_at:"2022-09-06 13:41:00")
