Describe -Name 'Get-AOCDay03Part01' -Tag AdventOfCode {
    Context -Name 'Checking examples given by the website' {
        It -name 'given the input square [<InputSquare>], the function should return [<Step>] steps' -TestCases @(
            @{ InputSquare = 1; Step = 0 },
            @{ InputSquare = 12; Step = 3 },
            @{ InputSquare = 23; Step = 2 },
            @{ InputSquare = 1024; Step = 31 }
        ) {
            param($InputSquare, $Step)
            $ReturnedResult = Get-AOCDay03Part01 -InputSquare $InputSquare
            $ReturnedResult.Step | Should -Be $Step
        }
    }
}
