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

    <mu-sub-header>推荐店铺</mu-sub-header>
    <mu-flex class="flex-wrapper" align-items="center">
      <mu-flex justify-content="around" fill>
        <div class="func-box">
          <mu-avatar color="teal">A</mu-avatar>
          <div>A func</div>
        </div>
        <div class="box">
          <mu-avatar color="teal">B</mu-avatar>
          <div>B func</div>
        </div>
        <div class="box">
          <mu-avatar color="teal">C</mu-avatar>
          <div>C func</div>
        </div>
        <div class="box">
          <mu-avatar color="teal">D</mu-avatar>
          <div>D func</div>
        </div>
      </mu-flex>
    </mu-flex>

    <mu-flex class="flex-wrapper" align-items="center">
      <mu-flex justify-content="around" fill>
        <div class="box">
          <mu-avatar color="teal" class="box-logo">E</mu-avatar>
          <div>E func</div>
        </div>
        <div class="box">
          <mu-avatar color="teal" class="box-logo">F</mu-avatar>
          <div>F func</div>
        </div>
        <div class="box">
          <mu-avatar color="teal" class="box-logo">G</mu-avatar>
          <div>G func</div>
        </div>
        <div class="box">
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
            <mu-list-item avatar :ripple="false" button @click="listItemClick">
              <div class="box-list-left">
                <div class="box-list-img">
                  <img src="../../assets/images/carousel1.jpg">
                </div>
              </div>
              <div class="box-list-right">
                <mu-list-item-title>这个周末一起吃饭么?</mu-list-item-title>
                <mu-list-item-sub-title>
                  <span style="color: rgba(0, 0, 0, .87)">Myron Liu -</span> 周末要来你这里出差，要不要一起吃个饭呀，实在编不下去了,哈哈哈哈哈哈
                </mu-list-item-sub-title>
              </div>
            </mu-list-item>
            <mu-divider></mu-divider>
            <mu-list-item avatar :ripple="false" button @click="listItemClick">
              <div class="box-list-left">
                <div class="box-list-img">
                  <img src="../../assets/images/carousel2.jpg">
                </div>
              </div>
              <div class="box-list-right">
                <mu-list-item-title>Alex Qin</mu-list-item-title>
                <mu-list-item-sub-title>
                  <span style="color: rgba(0, 0, 0, .87)">看电影啊</span><br/>
                  我们去看电影，最近有部烂片上映，又有吐槽的了
                </mu-list-item-sub-title>
              </div>
            </mu-list-item>
            <mu-divider></mu-divider>
            <mu-list-item avatar :ripple="false" button @click="listItemClick">
              <div class="box-list-left">
                <div class="box-list-img">
                  <img src="../../assets/images/carousel3.jpg">
                </div>
              </div>
              <div class="box-list-right">
                <mu-list-item-title>LOL</mu-list-item-title>
                <mu-list-item-sub-title>
                  <span style="color: rgba(0, 0, 0, .87)">去打游戏啊</span><br/>
                  周末一起 LOL
                </mu-list-item-sub-title>
              </div>
            </mu-list-item>
            <mu-divider></mu-divider>
            <mu-list-item avatar :ripple="false" button @click="listItemClick">
              <div class="box-list-left">
                <div class="box-list-img">
                  <img src="../../assets/images/carousel4.jpg">
                </div>
              </div>
              <div class="box-list-right">
                <mu-list-item-title>LOL</mu-list-item-title>
                <mu-list-item-sub-title>
                  <span style="color: rgba(0, 0, 0, .87)">哇去</span><br/>
                  实在编不下去，这就是个demo
                </mu-list-item-sub-title>
              </div>
            </mu-list-item>
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
      carouselImg4
    }
  },
  methods: {
    listItemClick() {
      this.$router.push('/business/detail')
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
</style>
