Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme paradox

Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module PSFzf

Import-Module ZLocation

Set-Alias l ls
Set-Alias ll ls
Set-Alias la ls

function Get-GitStatus { & git status ; git lg }
New-Alias -Name lg -Value Get-GitStatus -Force -Option AllScope

function Add-GitFiles { & git add . ; git commit }
New-Alias -Name gac -Value Add-GitFiles -Force -Option AllScope

function List-ZF { & z | cut -b 8- | fzf }
function Go-ZF { 
  cd (List-ZF).Trim();
}
New-Alias -Name zf -Value Go-ZF -Force -Option AllScope
