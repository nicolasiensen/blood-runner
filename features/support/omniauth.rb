# coding: utf-8
Before('@omniauth_test') do
  OmniAuth.config.test_mode = true

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:facebook] = {"provider"=>"facebook", "uid"=>"536687842", "credentials"=>{"token"=>"254658994561606|b81b757085f533f8a07a1a04.1-536687842|vd8uDLv0skyxCTIEzKIlS-Nm0ls"}, "user_info"=>{"nickname"=>"nicolas.iensen", "email"=>"nicolas.iensen@gmail.com", "first_name"=>"Nícolas", "last_name"=>"Iensen", "name"=>"Nícolas Iensen", "image"=>"http://graph.facebook.com/536687842/picture?type=square", "urls"=>{"Facebook"=>"http://www.facebook.com/nicolas.iensen", "Website"=>nil}}, "extra"=>{"user_hash"=>{"id"=>"536687842", "name"=>"Nícolas Iensen", "first_name"=>"Nícolas", "last_name"=>"Iensen", "link"=>"http://www.facebook.com/nicolas.iensen", "username"=>"nicolas.iensen", "hometown"=>{"id"=>"113635538650374", "name"=>"Estrêla, Rio Grande Do Sul, Brazil"}, "sports"=>[{"id"=>"107874759233583", "name"=>"Association football", "with"=>[{"id"=>"1231047554", "name"=>"Andrey De Franceschi"}], "from"=>{"id"=>"1231047554", "name"=>"Andrey De Franceschi"}}], "education"=>[{"school"=>{"id"=>"106034156102909", "name"=>"Colégio Salesiano Dom Bosco"}, "type"=>"High School"}, {"school"=>{"id"=>"114611835217226", "name"=>"PUC-RS"}, "year"=>{"id"=>"136328419721520", "name"=>"2009"}, "type"=>"College"}], "gender"=>"male", "email"=>"nicolas.iensen@gmail.com", "timezone"=>-3, "locale"=>"en_US", "verified"=>true, "updated_time"=>"2011-06-27T23:32:01+0000"}}}
end

After('@omniauth_test') do
  OmniAuth.config.test_mode = false
end

