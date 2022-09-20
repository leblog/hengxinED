import request from '@/utils/request'

// 查询口味申请单列表
export function listTaste(query) {
  return request({
    url: '/open/crud/list',
    method: 'get',
    params: query
  })
}

// 查询口味申请单详细
export function getTaste(tasteId) {
  return request({
    url: '/open/crud/query/' + tasteId,
    method: 'get'
  })
}

// 新增口味申请单
export function addTaste(data) {
  return request({
    url: '/open/crud',
    method: 'post',
    data: data
  })
}

// 修改口味申请单
export function updateTaste(data) {
  return request({
    url: '/open/crud',
    method: 'put',
    data: data
  })
}

// 绑定口味申请单审批流程编码
export function updateTasteProcessNo(data) {
  return request({
    url: '/open/crud/editPresson',
    method: 'put',
    data: data
  })
}

// 删除口味申请单
export function delTaste(tasteId) {
  return request({
    url: '/open/crud/' + tasteId,
    method: 'delete'
  })
}

// 作废口味申请单
export function getWasteTaste(tasteId) {
  return request({
    url: '/open/crud/waste/' + tasteId,
    method: 'get'
  })
}


// 分配跟进人字典-获取分配人字典数据
export function getDistribution() {
  return request({
    url: '/open/crud/getDistribution',
    method: 'get'
  })
}

/*查询口味申请单日志*/
export function getLog(tasteId) {
  return request({
    url: '/open/crud/oper/' + tasteId,
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
    url: '/open/crud/audit/' + tasteId,
    method: 'get'
  })
}
/*查询个人信息接口*/
export function getUserDetail() {
  return request({
    url: '/open/crud/userDetail',
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


/*首页绑定微信ID 通过agentConfig注入应用的权限 https://developer.work.weixin.qq.com/document/path/90269#14932*/
export function getAgentTicket(data) {
  return request({
    url: '/open/code',
    method: 'post',
    data: data
  })
}

/*通过config接口注入权限验证配置 https://developer.work.weixin.qq.com/document/path/90269#14931/%E6%AD%A5%E9%AA%A4%E4%BA%8C%EF%BC%9A%E9%80%9A%E8%BF%87config%E6%8E%A5%E5%8F%A3%E6%B3%A8%E5%85%A5%E6%9D%83%E9%99%90%E9%AA%8C%E8%AF%81%E9%85%8D%E7%BD%AE*/
export function getAgentTicketCodeApp(data) {
  return request({
    url: '/open/codeApp',
    method: 'post',
    data: data
  })
}


/*重定向鉴权接口*/
export function wxAuthorize() {
  return request({
    url: '/open/wx/callback/wxAuthorize',
    method: 'get'
  })
}



/**
 * 开始跟进接口
 *
 */
export function start(data) {
  return request({
    url: '/open/crud/start',
    method: 'put',
    data: data
    /*query: {
      isAsc:'desc',
      orderByColumn:'updateTime'
    }*/
  })
}
