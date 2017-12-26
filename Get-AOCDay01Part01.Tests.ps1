Describe -Name 'Get-AOCDay01Part01' {
    It -name 'should return a result of [<ExpectedResult>] for the input [<InputObject>]' -TestCases @(
        @{ InputObject = 1122; ExpectedResult = 3 },
        @{ InputObject = 1111; ExpectedResult = 4 },
        @{ InputObject = 1234; ExpectedResult = 0 },
        @{ InputObject = 91212129; ExpectedResult = 9 }
    ) {
        param($InputObject, $ExpectedResult)
        $Result = Get-AOCDay01Part01 -InputObject $InputObject
        $Result | Should -Be $ExpectedResult
    }
}