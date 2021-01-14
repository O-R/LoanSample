$acl = Get-Acl "E:\WORK\abpvnext\AbpLoanSample\LoanSample.Customer.WindowsService\Publish"
$aclRuleArgs = "DESKTOP-VQOIBLI\hzh", "Read,Write,ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow"
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($aclRuleArgs)
$acl.SetAccessRule($accessRule)
$acl | Set-Acl "E:\WORK\abpvnext\AbpLoanSample\LoanSample.Customer.WindowsService\Publish"

New-Service -Name {SERVICE NAME} -BinaryPathName "E:\WORK\abpvnext\AbpLoanSample\LoanSample.Customer.WindowsService\Publish\LoanSample.Customer.WindowsService.exe" -Credential "DESKTOP-VQOIBLI\hzh" -Description "abp windows service" -DisplayName "abp" -StartupType Automatic