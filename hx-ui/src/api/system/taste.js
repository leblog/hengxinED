import request from '@/utils/request'

// 查询口味申请单列表
export function listTaste(query) {
  return request({
    url: '/system/taste/list',
    method: 'get',
    params: query
  })
}

// 查询口味申请单详细
export function getTaste(tasteId) {
  return request({
    url: '/system/taste/query/' + tasteId,
    method: 'get'
  })
}

// 新增口味申请单
export function addTaste(data) {
  return request({
    url: '/system/taste',
    method: 'post',
    data: data
  })
}

// 修改口味申请单
export function updateTaste(data) {
  return request({
    url: '/system/taste',
    method: 'put',
    data: data
  })
}

// 删除口味申请单
export function delTaste(tasteId) {
  return request({
    url: '/system/taste/' + tasteId,
    method: 'delete'
  })
}

// 作废口味申请单
export function getWasteTaste(tasteId) {
  return request({
    url: '/system/taste/waste/' + tasteId,
    method: 'get'
  })
}


// 分配跟进人字典-获取分配人字典数据
export function getDistribution() {
  return request({
    url: '/system/taste/getDistribution',
    method: 'get'
  })
}

/*查询口味申请单日志*/
export function getLog(tasteId) {
  return request({
    url: '/system/taste/oper/' + tasteId,
    method: 'get',
    query: {
      isAsc:'desc',
      orderByColumn:'operTime'
    }
  })
}

/*强制审核通过口味申请单*/
export function getAuditTaste(tasteId) {
  return request({
    url: '/system/taste/audit/' + tasteId,
    method: 'get'
  })
}
/*查询个人信息接口*/
export function getUserDetail() {
  return request({
    url: '/system/taste/userDetail',
    method: 'get'
  })
}

/*烟油单审批推送接口*/
export function commitPush(tasteId) {
  return request({
    url: '/system/wxOwn/callback/push/'+ tasteId,
    method: 'get'
  })
}

/*审批详情接口*/
export function auitDetail(spNo) {
  return request({
    url: '/system/wxOwn/callback/auitDetail/'+ spNo,
    method: 'get'
  })
}

/*更新(同步)审批接口*/
export function updateAuitDetail(spNo) {
  return request({
    url: '/system/wxOwn/callback/updateAuitDetail/'+ spNo,
    method: 'get'
  })
}

/*首页绑定微信userId */
export function bindWxUserId(code) {
  return request({
    url: '/open/wx/callback/userIfo/'+ code,
    method: 'get'
  })
}


/*首页绑定微信ID */
export function getAgentTicket(data) {
  return request({
    url: '/open/code',
    method: 'post',
    data: data
  })
}
