Set-PSReadlineOption -Color @{
    "Command" = [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" = [ConsoleColor]::Magenta
    "Variable" = [ConsoleColor]::White
    "String" = [ConsoleColor]::Yellow
    "Number" = [ConsoleColor]::Blue
    "Type" = [ConsoleColor]::Cyan
    "Comment" = [ConsoleColor]::DarkCyan
}
# Dracula Prompt Configuration
Import-Module posh-git
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
# Dracula Git Status Configuration
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue

New-Alias -Name webr -value wget

<# vueling #>
function ams {
    Set-Location C:/dev/vuelingRepos/AMS
    ls
}
function arq {
    Set-Location C:/dev/vuelingRepos/ARQ
    ls
}
function atc {
    Set-Location C:/dev/vuelingRepos/ATC
    ls
}

<# programming #>
function dev {
    Set-Location C:/dev
    ls
}

<# git #>
function pull {
    git pull
}
function push {
    git push
}
function status {
    git status
}
function branches {
    git branch -a
}
Function commit
{
    param (
        [parameter(mandatory=$true, Position=0)] `
        [String]$Message
    )
    process {
        git commit -m $Message
    }
}

<# utilities #>
#region UTILITIES
function version {
    $PSVersionTable.PSVersion
}

function time {
    get-date -Format hh:mm:ss
}

Function gg
{
    param (
        [parameter(mandatory=$false, Position=0)] `
        [String]$SearchString
    )
    process {
        $URL = $SearchString -replace ' ','+';
        $URL = "https://www.google.com/search?q=" + $URL;
        echo ("Searching Google for <" + $SearchString + ">...");
        start chrome.exe $URL;
    }
}

Function music
{
    process {
        $URL = "https://www.youtube.com/watch?v=6cCk199tbcg&t=13715s&ab_channel=Rambler";
        echo ("Music ON")
        start chrome.exe $URL;
    }
}

Function wats
{
    process {
        echo ("Starting....")
        start chrome.exe "https://web.whatsapp.com/";
        start chrome.exe "https://www.youtube.com/watch?v=6cCk199tbcg&t=13715s&ab_channel=Rambler";
    }
}

Function profile
{
    Set-Location C:/Users/Alvaro/Documents/PowerShell
    code .
}

Function obs 
{
    Set-Location C:\Users\Alvaro\AppData\Local\Obsidian
    start Obsidian.exe 
}

#endregion

<# testing #>
