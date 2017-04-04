/**
 * Created by 徐礼华 on 2017/2/14.
 * 修改密码
 */
//判断保存按钮是否可以点击
function isBtnDisabled(){
    if($("#oldPwd").val().length > 0 && $("#newPwd").val().length > 0 && $("#comfirePwd").val().length > 0){
        $("#saveBtn").attr("disabled",false);
    }else{
        $("#saveBtn").attr("disabled",true);
    }
}
//旧密码输入框keyup事件
$("#oldPwd").keyup(function(){
    isBtnDisabled();
});
//新密码输入框keyup事件
$("#newPwd").keyup(function(){
    isBtnDisabled();
});
//确认密码输入框keyup事件
$("#comfirePwd").keyup(function(){
    isBtnDisabled();
});
//密码输入框失去焦点事件
$("#oldPwd").focusout(function(){
    if($("#oldPwd").val().length <= 0){
        $("#oldPwd").parent().children(".text-danger").html("旧密码不能为空");
    }else{
        $("#oldPwd").parent().children(".text-danger").html("");
    }
});
//密码输入框失去焦点事件
$("#newPwd").focusout(function(){
    if($("#newPwd").val().length <= 0){
        $("#newPwd").parent().children(".text-danger").html("新密码不能为空");
    }else{
        $("#newPwd").parent().children(".text-danger").html("");
    }
});
//确认密码输入框keyup事件
$("#comfirePwd").focusout(function(){
    if($("#comfirePwd").val().length <= 0){
        $("#comfirePwd").parent().children(".text-danger").html("密码不能为空");
    }else if($("#newPwd").val() != $("#comfirePwd").val()){
        $("#comfirePwd").parent().children(".text-danger").html("两次输入不一致，请重新输入");
        $("#comfirePwd").val("");
    }else{
        $("#comfirePwd").parent().children(".text-danger").html("");
    }
});
//点击修改按钮
$("#saveBtn").click(function(){
    if($("#oldPwd").val().length <= 0){
        $("#oldPwd").parent().children(".text-danger").html("旧密码不能为空");
        $("#oldPwd").focus();
    }else if($("#newPwd").val().length <= 0){
        $("#newPwd").parent().children(".text-danger").html("新密码不能为空");
        $("#newPwd").focus();
    }else if($("#comfirePwd").val().length <= 0){
        $("#comfirePwd").parent().children(".text-danger").html("密码不能为空");
        $("#comfirePwd").focus();
    }else if($("#newPwd").val() != $("#comfirePwd").val()){
        $("#comfirePwd").parent().children(".text-danger").html("两次输入不一致，请重新输入");
        $("#comfirePwd").unfocus();
        $("#comfirePwd").val("");
    }else{
        $(".text-danger").html("");
        /*
         * todo 修改密码
         * */
        //提交修改表单
        $("#saveBtn").submit();

    }

});

// 点击取消按钮
$("#cancelBtn").click(function(){
	$("#oldPwd").val("");
	$("#newPwd").val("");
	$("#comfirePwd").val("");
    $("#oldPwd").parent().children(".text-danger").html("");
    $("#newPwd").parent().children(".text-danger").html("");
    $("#comfirePwd").parent().children(".text-danger").html("");

});