import request from '@/utils/request'

// 查询测试-多数据源列表
export function listPeifang(query) {
  return request({
    url: '/system/peifang/list',
    method: 'get',
    params: query
  })
}

// 查询测试-多数据源详细
export function getPeifang(id) {
  return request({
    url: '/system/peifang/' + id,
    method: 'get'
  })
}

// 新增测试-多数据源
export function addPeifang(data) {
  return request({
    url: '/system/peifang',
    method: 'post',
    data: data
  })
}

// 修改测试-多数据源
export function updatePeifang(data) {
  return request({
    url: '/system/peifang',
    method: 'put',
    data: data
  })
}

// 删除测试-多数据源
export function delPeifang(id) {
  return request({
    url: '/system/peifang/' + id,
    method: 'delete'
  })
}
