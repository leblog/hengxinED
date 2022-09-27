import request from '@/utils/request'

// 查询调香师列表
export function listPeifang(query) {
  return request({
    url: '/peifang/peifang/listMP',
    method: 'get',
    params: query
  })
}

// 查询调香师详细
export function getPeifang(id) {
  return request({
    url: '/peifang/peifang/' + id,
    method: 'get'
  })
}

// 新增调香师
export function addPeifang(data) {
  return request({
    url: '/peifang/peifang',
    method: 'post',
    data: data
  })
}

// 修改调香师
export function updatePeifang(data) {
  return request({
    url: '/peifang/peifang',
    method: 'put',
    data: data
  })
}

// 删除调香师
export function delPeifang(id) {
  return request({
    url: '/peifang/peifang/' + id,
    method: 'delete'
  })
}
