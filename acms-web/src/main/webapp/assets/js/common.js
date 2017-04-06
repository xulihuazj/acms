/**
 * Created by 徐礼华 on 2017/2/14.
 * 公用js文件
 */
/*正则表达式校验对象*/
var validObj = {
  "isPwd": function(str){
      var reg = /^[\d\w]{6,16}$/g;
      return reg.test(str);
  }
};
var uiUtilObj = {
    "header": function(){
        var logoSrc = $("#header").attr("class") == "header-transparent" ? "images/whiteLogo.png" : "../images/logo-new.png";
        var headerHtml = ''
          + '<header class="navbar navbar-default navbar-fixed-top ">'
          + '<div class="container" style="width:95% !important">'
          + '<div class="navbar-header">'
          + '<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">'
          + '<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>'
          + '</button>'
          + '<a class="navbar-brand logo-link hidden-xs" href="http://www.safecenter.com"><img alt="安全中心logo" src="' + logoSrc + '"></a>'
          + '</div>'
          + '<div id="navbar" class="navbar-collapse collapse">'
          + '<ul class="nav navbar-nav navbar-right ">'
          + '<li><a href="http://www.safecenter.com/index.html" style="min-height:30px;">首页</a></li>'
          + '<li class="dropdown">'
          + '<a href="#" class="dropdown-toggle toggle1" data-toggle="dropdown" style="min-height:30px;">安全生态</a>'
          + '<ul class="dropdown-menu" style="height: 230px;">'
          + '<li><a href="http://www.safecenter.com/ecology/mobileBank.html">移动金融</a></li>'
          + '<li><a href="http://www.safecenter.com/ecology/mobileOffice.html">移动办公</a></li>'
          + '<li><a href="http://www.safecenter.com/ecology/mobileTerminal.html">安全智能终端</a></li>'
          + '<li><a href="http://www.safecenter.com/ecology/vehicle.html">互联网汽车</a></li>'
          + '<li><a href="http://www.safecenter.com/ecology/smartHome.html">智能家居</a></li>'
          + '</ul>'
          + '</li>'
          + '<li class="dropdown">'
          + '<a href="#" class="dropdown-toggle toggle2" data-toggle="dropdown" style="min-height:30px;">'
          + '关于平台'
          + '</a>'
          + '<ul class="dropdown-menu">'
          + '<li><a href="http://www.safecenter.com/safeChip.html">安全芯片</a></li>'
          + '<li><a href="http://www.safecenter.com/safeService.html">安全服务体系</a></li>'
          + '<li><a href="http://www.safecenter.com/safeCenter.html">荣誉资质</a></li>'
          + '</ul>'
          + '</li>'
          + '<li><a href="http://www.safecenter.com/partner.html" style="min-height:30px;">合作伙伴</a></li>'
          + '<li><a href="http://www.safecenter.com/joinUs.html" style="min-height:30px;">加入我们</a></li>'
          + '</ul>'
          + '</div>'
        + '</div>'
        + '</header>';
        $("#header").append(headerHtml);
        /*导航栏鼠标浮动下划线*/
        $("#header .nav").children("li").children("a").mouseover(function(){
            if($(this).closest("li").hasClass("active")){
                return;
            }else{
                $(this).css("min-height","39px");
                $(this).animate({
                    minHeight:"30px"
                },"slow")
            }
        });
        /*下拉菜单鼠标浮动效果*/
        $("#header .dropdown").hover(function(){
            $(this).addClass("open");
        }, function(){
            $(this).removeClass("open");
        });

        /*下拉菜单点击事件*/
        $("#header .toggle1").click(function(){
            window.location.href="http://www.safecenter.com/safeEcology.html";
        });
        $("#header .toggle2").click(function(){
            window.location.href="http://www.safecenter.com/aboutPlat.html";
        })
    },
    "footer": function(){
        var footerHtml =''
				+ '<ul>'
					+ '<li><div class="title">Memory</div><div class="bar">'
						+ '<div class="progress light progress-sm  progress-striped active">'
						+ '<div class="progress-bar progress-squared progress-bar-success" role="progressbar" aria-valuenow="60"'
						+ 'aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60%</div>'
						+ '</div></div><div class="desc">4GB of 8GB</div>'
					+ '</li>'
					+ '<li>'
						+ '<div class="title">HDD</div><div class="bar">'
						+ '<div class="progress light progress-sm  progress-striped active">'
						+ '<div class="progress-bar progress-squared progress-bar-primary" role="progressbar" aria-valuenow="40"'
						+ 'aria-valuemin="0" aria-valuemax="100" style="width: 40%;">40%</div></div></div>'
					+ '<div class="desc">250GB of 1TB</div>'
					+ '</li>'
					+ '<li>'
						+ '<div class="title">SSD</div><div class="bar">'
						+ '<div class="progress light progress-sm  progress-striped active">'
						+ '<div class="progress-bar progress-squared progress-bar-warning" role="progressbar" aria-valuenow="70"'
						+ 'aria-valuemin="0" aria-valuemax="100" style="width: 70%;">70%</div>'
						+ '</div></div><div class="desc">700GB of 1TB</div>'
					+ '</li>'
					+ '<li>'
						+ '<div class="copyright">'
						+ '<p class="text-muted text-right">'
						+ 'Fire <i class="fa fa-coffee"></i> Collect from <a href="" title="" target="_blank"></a> - More Templates'
						+ '<a href="" target="_blank" title=""></a></p></div>'
					+ '</li>' 
				+ '</ul>';
        $("#footer").append(footerHtml);
    },
    /*添加管理员提示框*/
    "addUserModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-lg" id="addUserModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-lg" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-warn"></div>'
            + '<p class="text-big mb20 pb20 text-center">检测升级前，请先下载、安装PC版芯片管家</p>'
            + '<p class="ml20 pl20 mb10">&nbsp;&nbsp;&nbsp;第一步：下载、安装PC版芯片管家 <a href="">下载插件</a></p>'
            + '<p class="ml20 pl20">&nbsp;&nbsp;&nbsp;第二步：安装完成后，请重新执行当前操作</p>'
            + '<div class="pt20 pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal">我知道了</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".addUserModal").append(innerHtml);
    },
    /*未安装插件提示框*/
    "updateActiveModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-lg" id="updateActiveModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-lg" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-warn"></div>'
            + '<p class="text-big mb20 pb20 text-center">PC版芯片管家有新版本啦</p>'
            + '<p class="ml20 pl20 mb10">&nbsp;&nbsp;&nbsp;第一步：下载、安装PC版芯片管家 <a href="">立即升级</a></p>'
            + '<p class="ml20 pl20">&nbsp;&nbsp;&nbsp;第二步：安装完成后，请重新执行当前操作</p>'
            + '<div class="pt20 pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal">下次升级</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".updateActiveModal").append(innerHtml);
    },
    /*未检测到安全设备提示框*/
    "noInsertCardModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-sm" id="noInsertCardModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-sm" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-warn"></div>'
            + '<p class="text-big mb20 pt15 pb20 text-center">未检测到安全设备，请插入后重试。</p>'
            + '<div class="pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal">确定</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".noInsertCardModal").append(innerHtml);
    },
    /*检测到插入多个设备提示框*/
    "insertMoreModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-sm" id="insertMoreModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-sm" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-warn"></div>'
            + '<p class="text-big mb20 pt15 pb20 text-center">请保证电脑上只插入一个安全设备。</p>'
            + '<div class="pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal">确定</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".insertMoreModal").append(innerHtml);
    },
    /*口令修改成功提示框*/
    "editPinSuccessModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-sm" id="editPinSuccessModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-sm" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-success"></div>'
            + '<p class="text-big mb20 pt15 pb20 text-center">安全口令修改成功，请牢记。</p>'
            + '<div class="pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal" id="editPINSuccess">确定</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".editPinSuccessModal").append(innerHtml);
    },
    /*备份服务关闭成功提示框*/
    "closeBackupSuccessModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-sm" id="closeBackupSuccessModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-sm" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-success"></div>'
            + '<p class="text-big pt15 pb10 text-center">备份服务关闭成功</p>'
            + '<p class="mb20 pb20 text-center text-small">备份卡（序列号：<span id="backupLicense"></span>）已失效</p>'
            + '<div class="pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal" onclick="closeBackupSuc();">确定</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".closeBackupSuccessModal").append(innerHtml);
    },
    /*关闭备份服务失败提示*/
    "absenceBackupServiceModal": function(){
        var innerHtml = ''
        + '<div class="modal fade bs-example-modal-sm" id="absenceBackupServiceModal" tabindex="-1" role="dialog">'
        + '<div class="modal-dialog modal-sm" role="document">'
        + '<div class="modal-content">'
        + '<div class="modal-body pl20 pr20">'
        + '<div class="iconfont icon icon-warn"></div>'
        + '<p class="text-big mb20 pt15 pb20 text-center" id="closeFailMsg"></p>'
        + '<div class="pb20 m10 text-center">'
        + '<button class="btn btn-primary" data-dismiss="modal">确定</button>'
        + '</div>'
        + '</div>'
        + '</div>'
        + '</div>'
        + '</div>';
        $(".absenceBackupServiceModal").append(innerHtml);
    },
    /*未备份服务提示*/
    "absenceBackupServiceModal": function(){
        var innerHtml = ''
        + '<div class="modal fade bs-example-modal-sm" id="absenceBackupServiceModal" tabindex="-1" role="dialog">'
        + '<div class="modal-dialog modal-sm" role="document">'
        + '<div class="modal-content">'
        + '<div class="modal-body pl20 pr20">'
        + '<div class="iconfont icon icon-warn"></div>'
        + '<p class="text-big mb20 pt15 pb20 text-center" id="absenceBackupError"></p>'
        + '<div class="pb20 m10 text-center">'
        + '<button class="btn btn-primary" data-dismiss="modal" id="absenceBackHtml">确定</button>'
        + '</div>'
        + '</div>'
        + '</div>'
        + '</div>'
        + '</div>';
        $(".absenceBackupServiceModal").append(innerHtml);
    },
    /*未查询到恢复记录提示框*/
    "cannotQueryBackupModal": function(){
        var innerHtml = ''
        	  + '<div class="modal fade bs-example-modal-sm" id="cannotQueryBackupModal" tabindex="-1" role="dialog">'
              + '<div class="modal-dialog modal-sm" role="document">'
              + '<div class="modal-content">'
              + '<div class="modal-body pl20 pr20">'
              + '<div class="iconfont icon icon-warn"></div>'
              + '<p class="text-big mb20 pt15 pb20 text-center" id="absenceMsg">设备未执行过恢复操作，无恢复记录！</p>'
              + '<div class="pb20 m10 text-center">'
              + '<button class="btn btn-primary" data-dismiss="modal">确定</button>'
              + '</div>'
              + '</div>'
              + '</div>'
              + '</div>'
              + '</div>';
        $(".cannotQueryBackupModal").append(innerHtml);
    },
    /*查询恢复记录异常错误提示框*/
    "queryBackupErrorModal": function(){
        var innerHtml = ''
        	  + '<div class="modal fade bs-example-modal-sm" id="queryBackupErrorModal" tabindex="-1" role="dialog">'
              + '<div class="modal-dialog modal-sm" role="document">'
              + '<div class="modal-content">'
              + '<div class="modal-body pl20 pr20">'
              + '<div class="iconfont icon icon-warn"></div>'
              + '<p class="text-big mb20 pt15 pb20 text-center" id="queryBackupError"></p>'
              + '<div class="pb20 m10 text-center">'
              + '<button class="btn btn-primary" data-dismiss="modal" onclick="backToRecovery();">确定</button>'
              + '</div>'
              + '</div>'
              + '</div>'
              + '</div>'
              + '</div>';
        $(".queryBackupErrorModal").append(innerHtml);
    },
    /*未检测到安全设备提示框*/
    "errorMessageModal": function(){
        var innerHtml = ''
            + '<div class="modal fade bs-example-modal-sm" id="errorMessageModal" tabindex="-1" role="dialog">'
            + '<div class="modal-dialog modal-sm" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-body pl20 pr20">'
            + '<div class="iconfont icon icon-warn"></div>'
            + '<p class="text-big mb20 pt15 pb20 text-center" id="backErrMsg"></p>'
            + '<div class="pb20 m10 text-center">'
            + '<button class="btn btn-primary" data-dismiss="modal">确定</button>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $(".errorMessageModal").append(innerHtml);
    }
};
(function(){
    /*uiUtilObj 初始化页面需要的顶部、底部、弹框等*/
    for(obj in uiUtilObj){
        uiUtilObj[obj]();
    }
    /*初始化placeholder*/
        //if($("input").length > 0){
        //    $("input").placeholder();
        //}
    if($(".password-group .eye").length > 0){
        //点击眼睛
        $(".password-group .eye").mousedown(function(){
            $(this).parent().addClass("open");
                //睁开眼睛，密码明文显示
                var val1 = $(this).prev().val();
                $(this).prev().before("<div class='pwd-dup'>" + val1 + "</div>");

        });
        $(".password-group .eye").mouseup(function(){
            $(this).parent().removeClass("open");
            $(".pwd-dup").remove();
        });
        $(".password-group .eye").mouseleave(function(){
            $(this).parent().removeClass("open");
            $(".pwd-dup").remove();
        });
    }

})();