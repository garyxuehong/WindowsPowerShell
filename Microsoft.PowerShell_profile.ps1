function Get-GitStatus { & git lg -sb $args }
New-Alias -Name lg -Value Get-GitStatus -Force -Option AllScope