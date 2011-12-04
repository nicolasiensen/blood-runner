require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Bank.blueprint do
  name { "Santa Casa" }
  o_negative { 0.57 }
  o_positive { 0.22 }
  a_negative { 0.61 }
  b_negative { 0.43 }
  a_positive { 0.26 }
  b_positive { 0.15 }
  ab_negative { 0.89 }
  ab_positive { 0.07 }
end

BloodType.blueprint do
  name { "A+" }
end
