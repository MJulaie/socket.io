package utils

import (
	"github.com/MJulaie/socket.io/v3/pkg/log"
)

func Log() *log.Log {
	return log.Default()
}
