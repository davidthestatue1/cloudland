/*
Copyright <holder> All Rights Reserved.

SPDX-License-Identifier: Apache-2.0
*/

package model

import (
	"github.com/IBM/cloudland/web/sca/dbs"
)

type Registry struct {
	Model
	Label           string `gorm:"type:varchar(128)"`
	OcpVersion      string `gorm:"type:varchar(128)"`
	RegistryContent string `gorm:"type:varchar(2048)"`
}

func init() {
	dbs.AutoMigrate(&Registry{})
}
