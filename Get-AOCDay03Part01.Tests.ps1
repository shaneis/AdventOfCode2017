Describe -Name 'Get-AOCDay03Part01' -Tag AdventOfCode {
    Context -Name 'Checking examples given by the website' {
        It -name 'given the input square [<Square>], the function should return [<Step>] steps' -TestCases @(
            @{ Square = 1; Step = 0 },
            @{ Square = 12; Step = 3 },
            @{ Square = 23; Step = 2 },
            @{ Square = 1024; Step = 31 }
        ) {
            param($Square, $Step)
            $ReturnedResult = Get-AOCDay03Part01 -Square $Square
            $ReturnedResult | Should -Be $Step
        }
    }
}
