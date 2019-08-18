<template>
  <div id="app">

    <mu-appbar style="width: 100%;" color="primary">
      <mu-button icon slot="left">
        <mu-icon value="menu"></mu-icon>
      </mu-button>
      Trading Area

      <mu-button flat slot="right">登录</mu-button>
    </mu-appbar>
    
    <keep-alive>
      <router-view/>
    </keep-alive>

    <mu-container class="tabbar">
      <mu-bottom-nav>
        <mu-bottom-nav-item title="首页" icon="home" to="/home/index"></mu-bottom-nav-item>
        <mu-bottom-nav-item title="群聊" icon="restore" to="/chat/index"></mu-bottom-nav-item>
        <mu-bottom-nav-item title="充值" icon="location_on" to="/product/index"></mu-bottom-nav-item>
        <mu-bottom-nav-item title="我的" icon="favorite" to="/center/index"></mu-bottom-nav-item>
      </mu-bottom-nav>
    </mu-container>

  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    
  }
}
</script>


<style>
.tabbar {
  position: fixed;
  bottom: 0;
}
</style>
