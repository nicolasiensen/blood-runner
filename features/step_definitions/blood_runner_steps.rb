Given /^there is a bank called "([^"]*)" with (\d+)% O\- (\d+)% O\+ (\d+)% A\- (\d+)% B\- (\d+)% A\+ (\d+)% B\+ (\d+)% AB\- (\d+)% AB\+$/ do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9|
  Bank.make!(:name => arg1, :o_negative => arg2, :o_positive => arg3, :a_negative => arg4, :b_negative => arg5, :a_positive => arg6, :b_positive => arg7, :ab_negative => arg8, :ab_positive => arg9)
end

Given /^there is a blood type called "([^"]*)"$/ do |arg1|
  BloodType.make!(:name => arg1)
end
