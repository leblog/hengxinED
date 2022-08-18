/*字典 type = {success,info,warning,danger}*/
function stateList(e) {
  switch (e) {
    case '-1':
      return '已作废'
    case '0':
      return '保存'
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
export default stateList
