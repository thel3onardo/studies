package topics

import (
	"errors"
	"strconv"
)

func ExecuteExample() (int, error) {
	value, err := strconv.Atoi("woqmdoqm")
	
	if err != nil {
		return 0, errors.New("there was an error")
	}
	return value, nil
}