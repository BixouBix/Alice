FactoryBot.define do
  factory :institution do
    name { "MyString" }
    accountTypeDescription { "MyString" }
    phone { "MyString" }
    urlHomeApp { "MyString" }
    urlLogonpp { "MyString" }
    oauthEnabled { false }
    urlForgotPassword { "MyString" }
    urlOnlineRegistration { "MyString" }
    klass { "MyString" }
    specialText { "MyString" }
    specialInstructions { "MyString" }
    address { "" }
    currency { "MyString" }
    email { "MyString" }
    status { "MyString" }
    oauthInstitutionId { "MyString" }
    branding { "MyString" }
  end
end
