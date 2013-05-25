# encoding: utf-8

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "feifei",
                         email: "feifei@qq.com",
                         password: "feifei",
                         password_confirmation: "feifei",
                         tel:18392130959,
                         louhao:"12#",
                         jiqu:"I",
                         fangjian:"218",
                         zuoyou:"右")
    admin.toggle!(:admin)
    
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 tel:18392130959,
                 louhao:"12#",
                         jiqu:"I",
                         fangjian:"218",
                         zuoyou:"右")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   tel:18392130959,
                   louhao:"12#",
                   jiqu:"I",
                   fangjian:"218",
                   zuoyou:"右")
    end
    users = User.all(limit: 6)
    50.times do |n|
      count = n+1
      hotel="锅巴米饭"
      price=7.5
      taste="鱼香肉丝"
      users.each { |user| user.orderlists.create!(count: count,
                                                  hotel:hotel,
                                                  price:price,
                                                  taste:taste) }
    end
  end
end
