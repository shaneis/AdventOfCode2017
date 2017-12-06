Import-Module -Name Pester -MinimumVersion 4.0.0

Describe -Name "Advent of code, Day 1, Part 2" {

    Context -Name "checking the values for the given tests" {

        It -name "'<InputNumber>' should return a value of '<ExpectedInt>'" -TestCases @(
            @{ Inputnumber = '1212'; ExpectedInt = 6 },
            @{ Inputnumber = '1221'; ExpectedInt = 0 },
            @{ Inputnumber = '123425'; ExpectedInt = 4 },
            @{ Inputnumber = '123123'; ExpectedInt = 12 },
            @{ Inputnumber = '12131415'; ExpectedInt = 4 }
        ) {
            
            param($InputNumber, $ExpectedInt)

            Get-AOCDay01Part02 -InputNumber $InputNumber | Should -Be $ExpectedInt
        }
    }
}
