Import-Module -Name Pester -MinimumVersion 4.0.0 -Force

Describe -Name "Testing Get-AOCRowChecksum" {

    Context -Name "The results should match the given examples" {

        It -Name "should return a value of <ExpectedDifference> for row <Row> (<InputRow>)" -TestCases @(
            @{ 
                InputRow = @"
5 1 9 5
7 5 3
2 4 6 8
"@
                Row             = 1
             ExpectedDifference = 8 
            },
            @{ InputRow = @"
5 1 9 5
7 5 3
2 4 6 8
"@
                Row = 2
                ExpectedDifference = 4 },
            @{ InputRow            = @"
5 1 9 5
7 5 3
2 4 6 8
"@
                Row                  = 3
                ExpectedDifference = 6 }
        ) {

            param ($InputRow, $Row, $ExpectedDifference)

            $Difference = Get-AOCRowChecksum -InputRow $InputRow | Where-Object Index -eq $row | Select-Object -ExpandProperty Difference
            $Difference | Should -Be $ExpectedDifference
        }
    }
}

<#
5 1 9 5
7 5 3
2 4 6 8
The first row's largest and smallest values are 9 and 1, and their difference is 8.
                The second row's largest and smallest values are 7 and 3, and their difference is 4.
The third row's difference is 6.
                In this example, the spreadsheet's checksum would be 8 + 4 + 6 = 18.
#>
