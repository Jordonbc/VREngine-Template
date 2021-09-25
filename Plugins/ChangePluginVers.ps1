

function IncrementVersion {
    param (
        [Parameter(Mandatory=$true)]
        $Json,
        [Parameter(Mandatory=$false)]
        [float]$IncrementValue = 0.01
    )
    if ($Json.VersionName)
    {
        $NewVersion = [math]::Round(([float]($Json.VersionName) + $IncrementValue),3)
        $Json.VersionName = [string]$NewVersion
    }
    $Json
}

function LoadJSON {
    param (
        [Parameter(Mandatory=$true)]
        [string]$FileLocation
    )

    Get-Content $FileLocation -raw | ConvertFrom-Json
}

function SaveJSON($FileLocation, $Json) {

    Write-Output "Saving JSON to $FileLocation"
    $Json | ConvertTo-Json  | Out-File $FileLocation
    Write-Output "Saved"
}

function GUI {
    
    Clear-Host
    $type = Read-Host -Prompt "core, guns, custom"
    $Vers = Read-Host -Prompt "What version to increment by"

    if ($type -eq "core")
    {
        Write-Output "you selected core"
        $JsonFilePath = "VREngine\VREngine.uplugin"
    }
    elseif ($type -eq "guns")
    {
        Write-Output "you selected guns"
        $JsonFilePath = "VREngineGuns\VREngineGuns.uplugin"
    }
    else
    {
        Write-Output "you selected custom: $type"
        $JsonFilePath = $type
    }


    Write-Output "Json file is: $JsonFilePath"
    Write-Output "----------------------------"

    $JSON = LoadJSON $JsonFilePath
    Write-Output "Current Json is: $JSON"
    Write-Output "----------------------------"
    if ($Vers -cne "")
    {
        $JSONModified = IncrementVersion $JSON $Vers
    }
    else
    {
        $JSONModified = IncrementVersion $JSON
    }
    Write-Output "Modified Json is: $JSONModified"
    Write-Output "----------------------------"

    SaveJSON $JsonFilePath $JSONModified
}

GUI