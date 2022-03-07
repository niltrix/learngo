// Copyright © 2018 Inanc Gumus
// Learn Go Programming Course
// License: https://creativecommons.org/licenses/by-nc-sa/4.0/
//
// For more tutorials  : https://learngoprogramming.com
// In-person training  : https://www.linkedin.com/in/inancgumus/
// Follow me on twitter: https://twitter.com/inancgumus

package main

import (
	"fmt"

	s "github.com/inancgumus/prettyslice"
)

func main() {
	spendings := make([][]int, 0, 5)

	s.PrintBacking = true

	spendings = append(spendings, []int{200, 100})
	s.Show("Day", spendings)
	spendings = append(spendings, []int{25, 10, 45, 60})
	s.Show("Day", spendings)
	spendings = append(spendings, []int{5, 15, 35})
	s.Show("Day", spendings)
	spendings = append(spendings, []int{95, 10}, []int{50, 25})
	s.Show("Day", spendings)

	for i, daily := range spendings {
		var total int
		for _, spending := range daily {
			total += spending
		}

		fmt.Printf("Day %d: %d\n", i+1, total)
	}
}
