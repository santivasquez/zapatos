ldap = Net::LDAP.new  :host => "10.131.137.180", # your LDAP host name or IP goes here,
                      :port => "300", # your LDAP host port goes here,
                      :encryption => :simple_tls,
                      :base => "DC=corp,DC=com", # the base of your AD tree goes here,
                      :auth => {
                        :method => :simple,
                        :username => "svasquez@DIS.local", # a user w/sufficient privileges to read from AD goes here,
                        :password => "P@ssword" # the user's password goes here
                      }