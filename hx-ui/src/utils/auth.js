import Cookies from 'js-cookie'

const TokenKey = 'Admin-Token'
const WxCodeKey = 'Wx-Code'

export function getToken() {
  return Cookies.get(TokenKey)
}

export function setToken(token) {
  return Cookies.set(TokenKey, token)
}

export function removeToken() {
  return Cookies.remove(TokenKey)
}
/*weixin code*/
export function getWxCode() {
  return Cookies.get(WxCodeKey)
}

export function setWxCode(code) {
  return Cookies.set(WxCodeKey, code)
}

export function removeWxCode() {
  return Cookies.remove(WxCodeKey)
}
