package controllers

import (
	"github.com/astaxie/beego"
)

type ApplyController struct {
	beego.Controller
}

// @Title Get
// @Description display form
// @Success 200
// @Failure
// @router / [get]
func (c *ApplyController) Get() {
	c.TplName = "apply.tpl"
	c.Render()
}
