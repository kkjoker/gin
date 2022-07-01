package main

import (
	"github.com/kkjoker/gin/api/library/rdbms"
	"github.com/kkjoker/gin/api/infra"
)

func main() {

	rdbms.Init()
	infra.Init()
}
