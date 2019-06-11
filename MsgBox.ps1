Add-Type -AssemblyName PresentationFramework
# Above line only has to be run once at the top of script.

# Block below line can be multiplied as many times as needed.
$msgBoxInput =  [System.Windows.MessageBox]::Show('Text in box','Box title','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

# Do something

  }

  'No' {

# Do something

  }

  }
