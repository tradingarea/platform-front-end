<template>
  <div id="home">
    
    <mu-flex class="flex-wrapper" align-items="center">
      <mu-flex justify-content="center" fill>
        <mu-carousel class="index-carousel">
          <mu-carousel-item>
            <img :src="carouselImg1">
          </mu-carousel-item>
          <mu-carousel-item>
            <img :src="carouselImg2">
          </mu-carousel-item>
          <mu-carousel-item>
            <img :src="carouselImg3">
          </mu-carousel-item>
          <mu-carousel-item>
            <img :src="carouselImg4">
          </mu-carousel-item>
        </mu-carousel>
      </mu-flex>
    </mu-flex>

    <mu-sub-header>首选功能</mu-sub-header>
    <mu-flex class="flex-wrapper" align-items="center">
      <mu-flex justify-content="around" fill>
        <div class="func-box" @click="$router.push('/business/detail')">
          <mu-icon value="store" center size="40" color="green"></mu-icon>
          <div>商家入驻</div>
        </div>
        <div class="func-box">
          <mu-avatar color="teal">B</mu-avatar>
          <div>B func</div>
        </div>
        <div class="func-box">
          <mu-avatar color="teal">C</mu-avatar>
          <div>C func</div>
        </div>
        <div class="func-box">
          <mu-avatar color="teal">D</mu-avatar>
          <div>D func</div>
        </div>
      </mu-flex>
    </mu-flex>

    <mu-flex class="flex-wrapper" align-items="center">
      <mu-flex justify-content="around" fill>
        <div class="func-box">
          <mu-avatar color="teal" class="box-logo">E</mu-avatar>
          <div>E func</div>
        </div>
        <div class="func-box">
          <mu-avatar color="teal" class="box-logo">F</mu-avatar>
          <div>F func</div>
        </div>
        <div class="func-box">
          <mu-avatar color="teal" class="box-logo">G</mu-avatar>
          <div>G func</div>
        </div>
        <div class="func-box">
          <mu-avatar color="teal" class="box-logo">H</mu-avatar>
          <div>H func</div>
        </div>
      </mu-flex>
    </mu-flex>

    <mu-flex class="flex-wrapper" align-items="center">
      <mu-flex justify-content="around" fill>
        <mu-paper :z-depth="1" class="box-list-wrap">
          <mu-list textline="three-line">
            <mu-sub-header>更多优惠</mu-sub-header>

            <mu-list-item avatar :ripple="false" button @click="listItemClick(business.id)" v-for="business in businessList" v-bind:key="businessList.size">
              <div class="box-list-left">
                <div class="box-list-img">
                  <span v-html=business.picture></span>
                </div>
              </div>
              <div class="box-list-right">
                <mu-list-item-title>{{business.name}}</mu-list-item-title>
                <mu-list-item-sub-title>
                  {{business.introduction}}
                </mu-list-item-sub-title>
              </div>
            </mu-list-item>
            <mu-divider></mu-divider>

          </mu-list>
        </mu-paper>
      </mu-flex>
    </mu-flex>
  </div>
</template>

<script>
import carouselImg1 from '../../assets/images/carousel1.jpg';
import carouselImg2 from '../../assets/images/carousel2.jpg';
import carouselImg3 from '../../assets/images/carousel3.jpg';
import carouselImg4 from '../../assets/images/carousel4.jpg';

export default {
  name: 'Index',
  data () {
    return {
      carouselImg1,
      carouselImg2,
      carouselImg3,
      carouselImg4,

      businessList: []
    }
  },
  mounted() {
    this.axios.get("/api/bussiness/findLastest5").then(res => {
      this.businessList = res.data.data
    })
  },
  methods: {
    listItemClick(businessId) {
      this.$router.push(`/business/detail?id=${businessId}`)
    }
  }
}
</script>

<style scoped>
.index-carousel {
  height: 150px;
}
.box-list-wrap {
  width: 100%;
  max-width: 360px;
  overflow: hidden;
}
.box-list-wrap .box-list-left {
  width: 60%;
}
.box-list-wrap .box-list-img {
  width: 100px;
  height: 60px;
  overflow: hidden;
}
.box-list-wrap .box-list-right {
  width: 100%;
}
.func-box {
  text-align: center;
  margin-top: 20px;
}
.flex-wrapper {
  margin-top: 10px;
}
</style>
