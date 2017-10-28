FactoryGirl.define do
  factory :profile do
    first_name      {Faker::Name.first_name}
    last_name       {Faker::Name.last_name}
    bio             {"In on announcing if of comparison pianoforte projection.
                      Maids hoped gay yet bed asked blind dried point. On
                      abroad danger likely regret twenty edward do. Too
                      horrible consider followed may differed age. An rest
                      if more five mr of. Age just her rank met down way.
                      Attended required so in cheerful an. Domestic replying
                      she resolved him for did. Rather in lasted no within no."
                    }
  end
end
