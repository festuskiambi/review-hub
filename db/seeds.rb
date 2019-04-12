# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Product.destroy_all
customer = Customer.create!(first_name: 'firstname', user_name: 'username',
                            email: 'example@email.com', password: '123456',
                            password_confirmation: '123456')
product = Product.create!(name: 'product1', code: 'QWER', category: 'Apparel')
review = Review.create!(rating: 3, comment: 'not good nood  f  dd  d d s  s  ',
                        customer: customer, product: product)
issue = Issue.create!(comment: 'not responding to this event now!',
                      severity: 'MINOR', product: product, customer: customer)
