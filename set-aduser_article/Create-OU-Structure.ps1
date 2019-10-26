#The command below uses the New-ADOrganizationUnit cmdlet to create a root OU called Department
New-ADOrganizationalUnit -Path 'DC=mylab,DC=local' -Name 'Department' -Verbose

#The commands below use the New-ADOrganizationUnit cmdlet to create three new sub 
#OUs called Accounting, Marketing, and IT

New-ADOrganizationalUnit -Path 'OU=Department,DC=mylab,DC=local' -Name 'Accounting' -Verbose
New-ADOrganizationalUnit -Path 'OU=Department,DC=mylab,DC=local' -Name 'Marketing' -Verbose
New-ADOrganizationalUnit -Path 'OU=Department,DC=mylab,DC=local' -Name 'IT' -Verbose

#The commands below use the New-ADOrganizationUnit cmdlet to create two new sub OUs for 
#Users and Computers under the Nest OUs that you created earlier

New-ADOrganizationalUnit -Path 'OU=Accounting,OU=Department,DC=mylab,DC=local' -Name 'Users' -Verbose
New-ADOrganizationalUnit -Path 'OU=Accounting,OU=Department,DC=mylab,DC=local' -Name 'Computers' -Verbose

New-ADOrganizationalUnit -Path 'OU=Marketing,OU=Department,DC=mylab,DC=local' -Name 'Users' -Verbose
New-ADOrganizationalUnit -Path 'OU=Marketing,OU=Department,DC=mylab,DC=local' -Name 'Computers' -Verbose

New-ADOrganizationalUnit -Path 'OU=IT,OU=Department,DC=mylab,DC=local' -Name 'Users' -Verbose
New-ADOrganizationalUnit -Path 'OU=IT,OU=Department,DC=mylab,DC=local' -Name 'Computers' -Verbose

