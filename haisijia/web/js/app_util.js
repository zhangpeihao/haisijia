
/**
* 从Key-Value表中取出Key-Value值并返回给客户端
* 例如：SQL为select company_id as keyStr, company_name as valStr from t_company
* 【闫涛 2015.08.09】初始版本
*/
function getHtmlSelectDataBySql(onOk, sql) {
    $.ajax({
            //url: "index.php?f=c_app_util&c=CAppUtil&m=getHtmlSelectDataBySql&sql=" + sql,
			url: "ajax?cmd=getHtmlSelectDataBySql&sql=" + sql,
            type: 'GET',
            dataType: 'json',
            success: onOk,
            error: function(msg) {alert("获取列表数据失败:" + msg.responseText + "!");}
        });
}

/**
* 收到前面的Key-Value值后，解析并显示到下拉选择框中
*/
function setupHtmlSelect(elemId, recs, selectedVal, hasDefaultOption) {
    var html = "";
    var i = 0;
    var selectedStr = "";
    if (hasDefaultOption) {
        html += "<option value=\"0\" selected >请选择</option>";
    }
    for (i=0; i<recs.length; i++) {
        selectedStr = "";
        if ((""+selectedVal) == (recs[i].keyStr)) {
            selectedStr = "selected";
        }
        html += "<option value=\"" + recs[i].keyStr + "\" " + selectedStr + " >" + recs[i].valStr + "</option>";
    }
    $("#" + elemId).html(html);
}