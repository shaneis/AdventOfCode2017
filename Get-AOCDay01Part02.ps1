function Get-AOCDay01Part02
{
    [CmdletBinding()]
    param (
        [string]$InputNumber
    )
    
    begin
    {
        $Halfway = $InputNumber.Length / 2
        [int]$TotalValue = 0
    }
    
    process
    {
        $ArrayInput = ($InputNumber -split '') -ne ''

        for ($i = 0; $i -lt $ArrayInput.Count; $i++)
        {
            
            $PartialResults = [PSCustomObject]@{
                Key          = $ArrayInput[$i]
                HalfWayValue = switch ($i + $Halfway)
                {
                    { $_ -ge $ArrayInput.Length } { $ArrayInput[($i + $Halfway) % $ArrayInput.Length] }
                    default { $ArrayInput[$i + $Halfway] }
                }
            }

            if ($PartialResults.Key -eq $PartialResults.HalfWayValue)
            {
                $TotalValue += $PartialResults.Key
            }
        
        }
    }
    
    end
    {
        $TotalValue
    }
}

Get-AOCDay01Part02 1212
