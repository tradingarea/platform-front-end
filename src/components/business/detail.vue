<template>
  <div id="home-detail">
    
    <mu-flex class="flex-wrapper" align-items="center">
      <mu-container>
        <mu-card style="width: 100%; max-width: 375px; margin: 0 auto;">
          <mu-card-header :title="user.name" sub-title="永恒钻石">
            <mu-avatar slot="avatar">
              <span v-html=user.avatar></span>
            </mu-avatar>
          </mu-card-header>
          <mu-card-media class="detail-media" :title="business.name" :sub-title="business.introduction">
            <span v-html=business.picture></span>
          </mu-card-media>
          <mu-card-title title="优惠详情" :sub-title="business.updatetime"></mu-card-title>
          <mu-card-text>
            {{business.detail}}
          </mu-card-text>
          <mu-card-actions>
            <mu-button flat>加入会员</mu-button>
            <mu-button flat>进入群聊</mu-button>
          </mu-card-actions>
        </mu-card>
      </mu-container>
    </mu-flex>

  </div>
</template>

<script>
export default {
  name: 'Index-detail',
  data () {
    return {
      business: {},
      user: {}
    }
  },
  mounted () {
    let id = this.$route.query.id
    this.axios.get(`/api/bussiness/findById?id=${id}`).then(res => {
      this.business = res.data.data
      this.axios.get(`/api/user/findById?id=${res.data.data.userid}`).then(res => {
        this.user = res.data.data

        console.log(this.business)
        console.log(this.user)
      })
    })
  }
}
</script>

<style scoped>
.flex-wrapper {
  margin-top: 20px;
}
.detail-media >>> img {
  width: 100%;
}
</style>
