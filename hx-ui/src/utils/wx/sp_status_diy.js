/**
 * 字典 type = {success,info,warning,danger}
 * 申请单当前审批状态：1-审批中；2-已通过；3-已驳回；4-已撤销
 * @param e
 * @returns {string}
 */
function sp_status_diy(e) {
  switch (e) {
    case '-1':
      return '-1 未知'
    case '0':
      return '已保存'
    case '1':
      return '审批中'
    case '2':
      return '已通过'
    case '3':
      return '已驳回'
    case '4':
      return '已撤销'
    default:
      return '未知'
  }
}
export default sp_status_diy
