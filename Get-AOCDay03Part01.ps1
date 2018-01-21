function Get-AOCDay03Part01
{
    [CmdletBinding()]
    param (
        # The square to find the distance from the starting point to
        [Parameter(Mandatory)]
        [ValidateRange(0, 20000000)]
        [Int]$InputSquare
    )
    
    begin
    {
        $OddNumbers = @(0..$InputSquare).Where{ $PSItem % 2 -eq 1 }
        [int]$Boundary = 0
        [int]${x-axisAt0}
    }
    
    process
    {
        @(0..$InputSquare).ForEach{
            if ($PSItem -gt [Math]::Pow($OddNumbers[$Boundary], 2))
            {
                # Each square has n odd number squared steps.
                # If the current number is greater than the current odd number squared,
                # then it's in the next square so we have to increment values.
                $Boundary++
                ${x-axisAt0}++
            }

            if ($PSItem -eq 0 -or $PSItem -eq [Math]::Pow($OddNumbers[$Boundary], 2))
            {
                # If we're starting or we're on a square of an odd number, reset to 'right' direction
                [String]$Direction = 'right'
            }
            elseif (condition)
            {
                # The steps look to be the same as the level of spirals...
            }
        }
    }
    
    end
    {
    }
}