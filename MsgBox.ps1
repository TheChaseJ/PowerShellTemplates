Add-Type -AssemblyName PresentationFramework

$msgBoxInput =  [System.Windows.MessageBox]::Show('Text in box','Box title','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

# Do something

  }

  'No' {

# Do something

  }

  }
