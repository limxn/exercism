// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package bob should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package bob

import "strings"

// Hey should have a comment documenting it.
func Hey(remark string) string {
	lastChar := remark[len(remark)-1]
	if lastChar == '?' && strings.ToUpper(remark) == remark {
		return "Calm down, I know what I'm doing!"
	}
	if lastChar == '?' {
		return "Sure."
	}
	if strings.ToUpper(remark) == remark {
		return "Whoa, chill out!"
	}
	return "Whatever."
}
