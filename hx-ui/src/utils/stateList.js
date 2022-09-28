/*字典 type = {success,info,warning,danger}*/
/*	申请单当前审批状态：1-审批中；2-已通过；3-已驳回；4-已撤销*/
function stateList(e) {
  switch (e) {
    case -1:
      return '已作废'
    case 0:
      return '' //不用了
    case 1:
      return '已保存'  //兼容旧版本的已保存
    case 2:
      return '已撤回'
    case 3:
      return '产品/业务退回'
    case 4:
      return '已驳回'
    case 5:
      return '已提交'
    case 7:
      return '已审核'
    case 10:
      return '分配产品跟进人'
    case 11:
      return '跟进中'
    case 12:
      return '分配调香师'
    case 13:
      return '任务退回'
    case 14:
      return '分配调香师完毕'
    case 20:
      return '已推送研发'
    case 21:
      return '配方开发中'
    case 29:
      return '配方完成'
    case 30:
      return '口味确认中'
    case 38:
      return '打印口味确认书'
    case 39:
      return '口味确认完毕'
    case 99:
      return '结案'
    default:
      return '未知'
  }
}
export default stateList

/*case -1:
      return '已作废'
    case 0:
      return '已保存'
    case 1:
      return '审批中'
    case 2:
      return '审批通过'
    case 3:
      return '已驳回/产品退回'
    case 4:
      return '已撤销'
    case 5:
      return '已提交,废弃'
    case 6:
      return '已审核'
    case 7:
      return '分配产品跟进人'
    case 8:
      return '跟进中'
    case 9:
      return '分配调香师'
    case 10:
      return '任务退回'
    case 11:
      return '分配调香师完毕'
    case 12:
      return '已推送研发'
    case 13:
      return '配方开发中'
    case 14:
      return '配方完成'
    case 15:
      return '口味确认中'
    case 16:
      return '打印口味确认书'
    case 17:
      return '口味确认完毕'
    case 18:
      return '结案'
    default:
      return '未知'*/
/*function stateList(e) {
  switch (e) {
    case '-1':
      return '已作废'
    case '0':
      return '已保存'
    case '1':
      return '已保存'
    case '2':
      return '已撤回'
    case '3':
      return '产品退回'
    case '4':
      return '已驳回'
    case '5':
      return '已提交'
    case '6':
      return '已审核'
    case '7':
      return '分配产品跟进人'
    case '8':
      return '跟进中'
    case '9':
      return '分配调香师'
    case '10':
      return '任务退回'
    case '11':
      return '分配调香师完毕'
    case '12':
      return '已推送研发'
    case '13':
      return '配方开发中'
    case '14':
      return '配方完成'
    case '15':
      return '口味确认中'
    case '16':
      return '打印口味确认书'
    case '17':
      return '口味确认完毕'
    case '18':
      return '结案'
    default:
      return '未知'
  }
}
export default stateList*/

/*case "-1":
        _dataSrouce[i].FStatus = "<label style='color:gray;'>已作废</label>";
        break;
    case "0":
        _dataSrouce[i].FStatus = "<label style='color:red;'></label>";
        break;
    case "1":
        _dataSrouce[i].FStatus = "已保存";
        break;
    case "2":
        _dataSrouce[i].FStatus = "<label style='color:blue;'>已撤回</label>";
        break;
    case "3":
        _dataSrouce[i].FStatus = "<label style='color:green;'>产品退回</label>";
        break;
    case "4":
        _dataSrouce[i].FStatus = "<label style='color:green;'>已驳回</label>";
        break;
    case "5":
        _dataSrouce[i].FStatus = "<label style='color:yellow;'>已提交</label>";
        break;
    case "7":
        _dataSrouce[i].FStatus = "<label style='color:green;'>已审核</label>";
        break;
    case "10":
        _dataSrouce[i].FStatus = "<label style='color:green;'>分配产品跟进人</label>";
        break;
    case "11":
        _dataSrouce[i].FStatus = "<label style='color:green;'>跟进中</label>";
        break;
    case "12":
        _dataSrouce[i].FStatus = "<label style='color:green;'>分配调香师</label>";
        break;
    case "13":
        _dataSrouce[i].FStatus = "<label style='color:green;'>任务退回</label>";
        break;
    case "14":
        _dataSrouce[i].FStatus = "<label style='color:green;'>分配调香师完毕</label>";
        break;
    case "20":
        _dataSrouce[i].FStatus = "<label style='color:green;'>已推送研发</label>";
        break;
    case "21":
        _dataSrouce[i].FStatus = "<label style='color:green;'>配方开发中</label>";
        break;
    case "29":
        _dataSrouce[i].FStatus = "<label style='color:green;'>配方完成</label>";
        break;
    case "30":
        _dataSrouce[i].FStatus = "<label style='color:green;'>口味确认中</label>";
        break;
    case "38":
        _dataSrouce[i].FStatus = "<label style='color:green;'>打印口味确认书</label>";
        break;
    case "39":
        _dataSrouce[i].FStatus = "<label style='color:green;'>口味确认完毕</label>";
        break;
    case "99":
        _dataSrouce[i].FStatus = "<label style='color:green;'>结案</label>";
        break;

    case "99":
        _dataSrouce[i].FStatus = "<label style='color:red;'>已确认口味</label>";
        break;
    default:
        _dataSrouce[i].FStatus = "未知" + _dataSrouce[i].FStatus;
        break;*/
