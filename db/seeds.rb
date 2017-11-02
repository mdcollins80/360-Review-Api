# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  [
    {
      email: 'Al',
      password: '123',
      password_confirmation: '123',
      given_name: 'Albert',
      surname: 'Albertson',
      business_unit: 'Central Office'
    },
    {
      email: 'Bob',
      password: '123',
      password_confirmation: '123',
      given_name: 'Bob',
      surname: 'Robertson',
      business_unit: 'High School'
    },
    {
      email: 'Christine',
      password: '123',
      password_confirmation: '123',
      given_name: 'Christine',
      surname: 'Christianson',
      business_unit: 'Central Office'
    },
    {
      email: 'Dave',
      password: '123',
      password_confirmation: '123',
      given_name: 'Dave',
      surname: 'Davidson',
      business_unit: 'Central Office'
    },
    {
      email: 'Ed',
      password: '123',
      password_confirmation: '123',
      given_name: 'Edgar',
      surname: 'Edgarton',
      business_unit: 'Central Office'
    },
    {
      email: 'Francine',
      password: '123',
      password_confirmation: '123',
      given_name: 'Francine',
      surname: 'Frankerson',
      business_unit: 'Central Office'
    },
    {
      email: 'Gary',
      password: '123',
      password_confirmation: '123',
      given_name: 'Gary',
      surname: 'Garrison',
      business_unit: 'High School'
    },
    {
      email: 'Harry',
      password: '123',
      password_confirmation: '123',
      given_name: 'Harry',
      surname: 'Henderson',
      business_unit: 'High School'
    },
    {
      email: 'Ike',
      password: '123',
      password_confirmation: '123',
      given_name: 'Icabod',
      surname: 'Icabodson',
      business_unit: 'High School'
    },
    {
      email: 'John',
      password: '123',
      password_confirmation: '123',
      given_name: 'John',
      surname: 'Johnson',
      business_unit: 'High School'
    },
    {
      email: 'Clark',
      password: '123',
      password_confirmation: '123',
      given_name: 'Kal-el',
      surname: 'Kent',
      business_unit: 'High School'
    },
    {
      email: 'Lucy',
      password: '123',
      password_confirmation: '123',
      given_name: 'Lucy',
      surname: 'Lawless',
      business_unit: 'High School'
    }
  ]
)
