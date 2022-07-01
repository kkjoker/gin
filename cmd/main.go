package main

import (
	"github.com/kkjoker/gin/api/infra"
	"github.com/kkjoker/gin/api/library/rdbms"
)

func main() {

	rdbms.Init()
	infra.Init()
}
