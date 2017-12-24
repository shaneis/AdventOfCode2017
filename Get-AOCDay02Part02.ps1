function Get-AOCDay02Part02
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        $InputObject
    )
    
    begin
    {
        [int]$i = 0
    }
    
    process
    {
        $SplitRows = $InputObject -split [System.Environment]::NewLine

        foreach ($Row in $SplitRows)
        {
            $MeasuredObject = $Row -split { $_ -eq ' ' -or $_ -eq "`t" }

            foreach ($Number in $MeasuredObject)
            {
                $MeasuredObject.GetEnumerator() |
                    ForEach-Object {
                    if (($_ % $Number -eq 0) -and ($_ -ne $Number))
                    {
                        $ModuloDivision = $_ / $Number
                    }
                }
            }

            $i++

            [PSCustomObject]@{
                Row    = $i
                Result = $ModuloDivision
            }
        }
    }
    
    end
    {
    }
}