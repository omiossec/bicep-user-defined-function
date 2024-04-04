# create User Managed Identity
$managedIdentity = New-AzUserAssignedIdentity -Name mi-test -ResourceGroupName managed-identity -Location northeurope 


Install-Module -Name Az.ManagedServiceIdentity


Get-AzFederatedIdentityCredentials -IdentityName mi-test -ResourceGroupName managed-identity




New-AzFederatedIdentityCredentials -ResourceGroupName managed-identity -IdentityName mi-test -Name fic-test -Audience "api://AzureADTokenExchange" -Issuer "https://token.actions.githubusercontent.com" -Subject "repo:omiossec/bicep-user-defined-function:environment:test"

New-AzFederatedIdentityCredentials -ResourceGroupName managed-identity -IdentityName mi-test -Name fic-test -Issuer "https://kubernetes-oauth.azure.com" -Subject "system:serviceaccount:ns:svcaccount"