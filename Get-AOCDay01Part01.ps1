function Get-AOCDay01Part01 {
    [CmdletBinding()]
    param (
        [string]$InputObject
    )
    
    begin {
        # First number
        [int]$StartNumber = (($PuzzleNumber -split '') -ne '')[0]
        # Last number (yeah, -1 means the last!)
        [int]$EndNumber = (($PuzzleNumber -split '') -ne '')[-1]
    }
    
    process {
        $CurrentNumber = $PSItem
    
        # It they match, we add them
        if ($CurrentNumber -eq $PreviousNumber)
        {
            $Sum += $CurrentNumber
        }
        $PreviousNumber = $CurrentNumber
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