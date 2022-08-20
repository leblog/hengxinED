/*字典 type = {success,info,warning,danger}*/
//1-审批中；2-已通过；3-已驳回；4-已撤销；6-通过后撤销；7-已删除；10-已支付
function sp_status(e) {
  switch (e) {
    case -1:
      return '-1 未知'
    case 0:
      return '0-未知'
    case 1:
      return '审批中'
    case 2:
      return '已通过'
    case 3:
      return '已驳回'
    case 4:
      return '已撤销'
    case 5:
      return '5-未知'
    case 6:
      return '通过后撤销'
    case 7:
      return '已删除'
    case 8:
      return '8-未知'
    case 9:
      return '9-未知'
    case 10:
      return '已支付'
    default:
      return '未知'
  }
}
export default sp_status
