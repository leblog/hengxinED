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
    url: '/system/taste/' + tasteId,
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

// 作废口味申请单详细
export function getWasteTaste(tasteId) {
  return request({
    url: '/system/taste/waste/' + tasteId,
    method: 'get'
  })
}
