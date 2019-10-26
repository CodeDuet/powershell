#Populate AD users in Active Directory

#Generate 5 new Accountant users
    #Department : Accounting
    #State : FL
    #Office : Miami
    
    $count = 6
    $nameconvention = 'accountant_user'
    $num = 1
    while ($num -ne $count){
    $account = ($nameconvention + $num)
    New-ADUser -Name $account -Department 'Accounting' -State 'FL' -Office 'Miami' -Path 'OU=Users,OU=Accounting,OU=Department,DC=mylab,DC=local' -Verbose
    
    $num += 1
    }
    
    #Generate 5 new Marketing users
    #Department : Marketing
    #State : CA
    #Office : San Francisco
    $count = 11
    $num = 6
    $nameconvention = 'market_user'
    while ($num -ne $count){
    $account = ($nameconvention + $num)
    
    New-ADUser -Name $account -Department 'Marketing' -State 'CA' -Office 'San Francisco' -Path 'OU=Users,OU=Marketing,OU=Department,DC=mylab,DC=local' -AccountPassword (Read-Host -AsSecureString "Input User Password") -Enabled $True -Verbose
    
    $num += 1
    }
    
    #Generate 5 new IT users
    #Department : IT
    #State : NY
    #Office : Brooklyn
    $count = 17
    $num = 12
    $nameconvention = 'it_user'
    while ($num -ne $count){
    $account = ($nameconvention + $num)
    
    New-ADUser -Name $account -Department 'IT' -State 'NY' -Office 'Brooklyn' -Path 'OU=Users,OU=IT,OU=Department,DC=mylab,DC=local' -Verbose
    
    $num += 1
    }
