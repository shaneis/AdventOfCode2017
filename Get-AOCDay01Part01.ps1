function Get-AOCDay01Part01 {
    [CmdletBinding()]
    param (
        [string]$InputObject
    )
    
    begin {
        #Initialize a holding variable
        [int]$Sum = $null
        #Split the input
        $Digits = (($PuzzleNumber -split '') -ne '')
        # First number
        [int]$StartNumber = $Digits[0]
        # Last number (yeah, -1 means the last!)
        [int]$EndNumber = $Digits[-1]
    }
    
    process {
            $Digits | ForEach-Object {
            $CurrentNumber = $PSItem
        
            # It they match, we add them
            if ($CurrentNumber -eq $PreviousNumber)
            {
                $Sum += $CurrentNumber
            }
            $PreviousNumber = $CurrentNumber
        }
    }
    
    end {
        # Finally, check if we add the first number if it matches the last ("The list is circular")
        if ($StartNumber -eq $EndNumber)
        {
            [int]$Sum += $StartNumber
        }
        $Sum
    }
}