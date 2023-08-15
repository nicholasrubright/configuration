$DEV_PATH = "F:/Dev"

function dev {
  cd "$DEV_PATH/Projects/$args"
}

function venv {

  if(Test-Path env:VIRTUAL_ENV) {
    Invoke-Expression "deactivate"
    return
  }

  if(Test-Path -Path $args) {
    Invoke-Expression "$args/Scripts/activate"
  } else {
    Write-Host "Virtual Env folder: {$args} does not exist." -ForegroundColor red
  }
}