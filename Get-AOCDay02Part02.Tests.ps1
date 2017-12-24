Import-Module -Name Pester -MinimumVersion 4.0.0

Describe -Name 'testing Get-AOCDay02Part02' {
    It -name 'given [<InputObject>], it should return [<ExpectedResult>] for row [<Row>]' -TestCases @(
        @{ 
            InputObject = @"
5 9 2 8
9 4 7 3
3 8 6 5
"@
            Row = 1
            ExpectedResult = 4 
        },
    @{
            InputObject    = @"
5 9 2 8
9 4 7 3
3 8 6 5
"@
            Row            = 2
            ExpectedResult = 3
    },
    @{
            InputObject    = @"
5 9 2 8
9 4 7 3
3 8 6 5
"@
            Row            = 3
            ExpectedResult = 2
    }
    ) {
        param($InputObject, $Row, $ExpectedResult)
        $ReturnedResult = Get-AOCDay02Part02 -InputObject $InputObject |
            Where-Object Row -eq $Row |
            Select-Object -ExpandProperty Result
        $ReturnedResult | Should -Be $ExpectedResult
    }
}