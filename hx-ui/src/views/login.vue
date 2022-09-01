<template>
  <div class="login">
    <el-form ref="loginForm" :model="loginForm" :rules="loginRules" class="login-form">
      <h3 class="title">{{ $t('login.title') }}</h3>
      <lang-select class="set-language" />
      <el-form-item prop="username">
        <el-input
          v-model="loginForm.username"
          type="text"
          auto-complete="off"
          :placeholder="$t('login.username')"
        >
          <svg-icon slot="prefix" icon-class="user" class="el-input__icon input-icon" />
        </el-input>
      </el-form-item>
      <el-form-item prop="password">
        <el-input
          v-model="loginForm.password"
          type="password"
          auto-complete="off"
          :placeholder="$t('login.password')"
          @keyup.enter.native="handleLogin"
        >
          <svg-icon slot="prefix" icon-class="password" class="el-input__icon input-icon" />
        </el-input>
      </el-form-item>
      <el-form-item prop="code" v-if="captchaOnOff">
        <el-input
          v-model="loginForm.code"
          auto-complete="off"
          :placeholder="$t('login.verificationCode')"
          style="width: 63%"
          @keyup.enter.native="handleLogin"
        >
          <svg-icon slot="prefix" icon-class="validCode" class="el-input__icon input-icon" />
        </el-input>
        <div class="login-code">
          <img :src="codeUrl" @click="getCode" class="login-code-img"/>
        </div>
      </el-form-item>
<!--      <el-checkbox v-model="loginForm.rememberMe" style="margin:0px 0px 25px 0px;">{{$t('login.rememberMe')}}</el-checkbox>-->
      <el-form-item style="width:100%;">
        <el-button
          :loading="loading"
          size="medium"
          type="primary"
          style="width:100%;"
          @click.native.prevent="handleLogin"
        >
          <span v-if="!loading">{{$t('login.logIn')}}</span>
          <span v-else>{{$t('login.logIng')}}...</span>
        </el-button>
        <div style="float: right;" v-if="register">
          <router-link class="link-type" :to="'/register'">{{$t('login.register')}}</router-link>
        </div>
      </el-form-item>
    </el-form>
    <!--  底部  -->
    <div class="el-login-footer">
      <span>Copyright © 2022 tianyan All Rights Reserved.</span>
    </div>
  </div>
</template>

<script>
import LangSelect from '@/components/LangSelect'
import { getCodeImg } from "@/api/login";
import Cookies from "js-cookie";
import { encrypt, decrypt } from '@/utils/jsencrypt'
import axios from "axios";
import {getToken, setWxCode} from "@/utils/auth";
import {wxAuthorize} from "@/api/system/taste"

export default {
  name: "Login",
  components: { LangSelect },
  data() {
    return {
      Cookies,
      codeUrl: "",
      loginForm: {
        username: "",
        password: "",
        rememberMe: false,
        code: "",
        uuid: ""
      },
      loginRules: {
        username: [
          { required: true, trigger: "blur", message: "请输入您的账号" }
        ],
        password: [
          { required: true, trigger: "blur", message: "请输入您的密码" }
        ],
        code: [{ required: true, trigger: "change", message: "请输入验证码" }]
      },
      loading: false,
      // 验证码开关
      captchaOnOff: true,
      // 注册开关
      register: false,
      redirect: undefined
    };
  },
  watch: {
    $route: {
      handler: function(route) {
        this.redirect = route.query && route.query.redirect;
      },
      immediate: true
    }
  },
  created() {
    this.getCode();
    this.getCookie();
    // 获取微信绑定内容
    //console.log("路由{}",this.$route.query.redirect)
    //https://open.weixin.qq.com/connect/oauth2/authorize?appid=ww0530511650e0c6c8&redirect_uri=http://rds.cnhstar.com:44346/login&response_type=code&scope=snsapi_base&state=#wechat_redirect
    /*if(this.$route.query.detail != null){
      console.log("路由{}",this.$route.query.detail)
      setWxCode(this.$route.query.detail);
    }*/
    // 发请求拦截请求让用户登录
    console.log("路由1{}",window.location.href)
    console.log("路由2{}",window.location.pathname)
    /*if(window.location.pathname === "/login"){
      window.location.href = null
      window.location.href =
        `https://open.weixin.qq.com/connect/oauth2/authorize`+
        `?appid=ww0530511650e0c6c8`+
        `&redirect_uri=http://rds.cnhstar.com:44346/dev-api/open/wx/callback/str`+
        `&response_type=code`+
        `&scope=snsapi_base`+
        `&state=STATE`+
        `&debug=1`+
        `&agentid=1000042#wechat_redirect`

    }*/
// 44346端口   &redirect_uri=http://rds.cnhstar.com:44346/dev-api/open/wx/callback
    //this.$router.(``)
    /*var strings = this.$route.query.detail.split('/index?detail=');
    console.log("截取{}",strings[1])*/
    /*axios({
      method: 'get',
      url: `https://open.weixin.qq.com/connect/oauth2/authorize?appid=ww0530511650e0c6c8&redirect_uri=http://rds.cnhstar.com:44346&response_type=code&scope=snsapi_base&state=#wechat_redirect`
    }).then(async (res) => {
      console.log("获取用户code详情:",JSON.stringify(res))
    });*/
    /*let token = "3zwY7IgtKdGq3CP0FNde_Es-E15NqAfAgNPdVVGyix0Ix7rAyqfK1jJridN_hqB5FR83hAfDRt8Bmvcpm56AnRV_oR5empyDcZx0iKUbBeN5wKa04C1mAqiBJQz-2HdOAMg13m8e_3Nb-JuWjlkZqQ6TbSwouj9BIyFaZaQVTjlGrJA-HOmH9HyilNcAKyqHwt9MLeD4Pk9yiOXAsJU1zw"
    // 获取微信接口
   */

    // wxAuthorize().then(res=>{
    //   console.log("获取用户code详情11:",JSON.stringify(res))
    // })
  },
  methods: {
    getCode() {
      getCodeImg().then(res => {
        this.captchaOnOff = res.captchaOnOff === undefined ? true : res.captchaOnOff;
        if (this.captchaOnOff) {
          this.codeUrl = "data:image/gif;base64," + res.img;
          this.loginForm.uuid = res.uuid;
        }
      });
    },
    getCookie() {
      const username = Cookies.get("username");
      const password = Cookies.get("password");
      const rememberMe = Cookies.get('rememberMe')
      this.loginForm = {
        username: username === undefined ? this.loginForm.username : username,
        password: password === undefined ? this.loginForm.password : decrypt(password),
        rememberMe: rememberMe === undefined ? false : Boolean(rememberMe)
      };
    },
    handleLogin() {
      this.$refs.loginForm.validate(valid => {
        if (valid) {
          this.loading = true;
          if (this.loginForm.rememberMe) {
            Cookies.set("username", this.loginForm.username, { expires: 30 });
            Cookies.set("password", encrypt(this.loginForm.password), { expires: 30 });
            Cookies.set('rememberMe', this.loginForm.rememberMe, { expires: 30 });
          } else {
            Cookies.remove("username");
            Cookies.remove("password");
            Cookies.remove('rememberMe');
          }
          this.$store.dispatch("Login", this.loginForm).then(() => {
            this.$router.push({ path: this.redirect || "/" }).catch(()=>{});
          }).catch(() => {
            this.loading = false;
            if (this.captchaOnOff) {
              this.getCode();
            }
          });
        }
      });
    }
  }
};
</script>

<style rel="stylesheet/scss" lang="scss">
$bg:#2d3a4b;
$dark_gray:#889aa4;
$light_gray:#eee;
.login {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  background-color: #2d3a4b;
  //background-image: url("../assets/images/login-background.jpg");
  background-size: cover;
}
.title {
  margin: 0px auto 30px auto;
  text-align: center;
  color: #707070;
}

.login-form {
  border-radius: 6px;
  background: #ffffff;
  width: 400px;
  padding: 25px 25px 5px 25px;
  .el-input {
    height: 38px;
    input {
      height: 38px;
    }
  }
  .input-icon {
    height: 39px;
    width: 14px;
    margin-left: 2px;
  }
}
.login-tip {
  font-size: 13px;
  text-align: center;
  color: #bfbfbf;
}
.login-code {
  width: 33%;
  height: 38px;
  float: right;
  img {
    cursor: pointer;
    vertical-align: middle;
  }
}
.el-login-footer {
  height: 40px;
  line-height: 40px;
  position: fixed;
  bottom: 0;
  width: 100%;
  text-align: center;
  color: #fff;
  font-family: Arial;
  font-size: 12px;
  letter-spacing: 1px;
}
.login-code-img {
  height: 38px;
}
</style>
