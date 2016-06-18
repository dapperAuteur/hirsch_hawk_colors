# create user
FactoryGirl.define do
    factory :user do
        name                'Example User'
        email               'example@railstutorial.org'
        password_digest     'foobar'
        admin               true
    end
end