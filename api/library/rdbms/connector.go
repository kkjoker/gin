package rdbms

import (
	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
)

var (
	db  *gorm.DB
	err error
)

// Init init db
func Init() {

	DBMS := "mysql"
	USER := "root"
	PASS := "root"
	HOST := "tcp(db:3306)"
	DBNAME := "gin"

	CONNECT := USER + ":" + PASS + "@" + HOST + "/" + DBNAME + "?loc=Asia%2FTokyo&parseTime=true&charset=utf8mb4"

	db, err = gorm.Open(DBMS, CONNECT)
	if err != nil {
		panic(err)
	}
}

// GetDB called db
func GetDB() *gorm.DB {
	return db
}

// Close closing db
func Close() {
	if err := db.Close(); err != nil {
		panic(err)
	}
}
