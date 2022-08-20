/*字典 type = {success,info,warning,danger}*/
// 微信分支审批  分支审批人审批状态：1-审批中；2-已同意；3-已驳回；4-已转审；11-已退回；12-已加签；13-已同意并加签
function sp_status_child(e) {
  switch (e) {
    case -1:
      return '-1 未知'
    case 0:
      return '0-未知'
    case 1:
      return '审批中'
    case 2:
      return '已同意'
    case 3:
      return '已驳回'
    case 4:
      return '已转审'
    case 5:
      return '5-未知'
    case 6:
      return '6-未知'
    case 7:
      return '7-未知'
    case 8:
      return '8-未知'
    case 9:
      return '9-未知'
    case 10:
      return '已支付'
    case 11:
      return '已退回'
    case 12:
      return '已加签'
    case 13:
      return '已同意并加签'
    default:
      return '未知'
  }
}
export default sp_status_child
