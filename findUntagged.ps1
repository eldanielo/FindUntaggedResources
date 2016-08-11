Find-AzureRmResource | foreach { 

    $tagged = $false 

    foreach($t in  $_.Tags) 

    { 

        if($t.Name -eq "Environment") 

        { 

            $tagged = $true 

            continue 

        } 

    } 

 

    if($tagged -eq $false) { 

        Write-host "Not Tagged - RG: " $_.ResourceGroupName " Resource: " $_.ResourceName   

    } 

}  
