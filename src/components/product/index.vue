<template>
  <div id="product">
    <mu-flex justify-content="center" class="flex-wrapper" align-items="around">
      <div class="alert-wrapper">
        <mu-alert color="error">
          <mu-icon left value="check_circle"></mu-icon>活动时间：2019.08.23 - 2019.09.23
        </mu-alert>
      </div>
    </mu-flex>

    <mu-flex justify-content="center" class="flex-wrapper" align-items="around">
      <mu-divider></mu-divider>
    </mu-flex>

    <mu-flex justify-content="center" class="flex-wrapper" align-items="around">
      <mu-stepper :active-step="vactiveStep" orientation="vertical">
        <mu-step>
          <mu-step-label>
            选择活动地点
          </mu-step-label>
          <mu-step-content>
            <p>
              在附近选择一个活动的地点, 最好靠近地铁站公交站，已方便交通，附近设施应尽量完善，最重要的是有Wifi
            </p>
            <mu-button class="demo-step-button" @click="vhandleNext" color="primary">下一步</mu-button>
          </mu-step-content>
        </mu-step>
        <mu-step>
          <mu-step-label>
            创建一个群组
          </mu-step-label>
          <mu-step-content>
            <p>
              创建群组，50人左右，以18-25单身青年为主。。。。。
            </p>
            <mu-button class="demo-step-button" @click="vhandleNext" color="primary">下一步</mu-button>
            <mu-button flat class="demo-step-button" @click="vhandlePrev">上一步</mu-button>
          </mu-step-content>
        </mu-step>
        <mu-step>
          <mu-step-label>
            宣传活动
          </mu-step-label>
          <mu-step-content>
            <p>
              多在群里发消息宣传宣传，有事没事多在群里唠唠嗑，确定的话就ok拉
            </p>
            <mu-button class="demo-step-button" @click="vhandleNext" color="primary">完成</mu-button>
            <mu-button flat class="demo-step-button" @click="vhandlePrev">上一步</mu-button>
          </mu-step-content>
        </mu-step>
      </mu-stepper>
    </mu-flex>

    <mu-flex justify-content="center" class="flex-wrapper" align-items="around">
      <p v-if="vfinished">
        都完成啦!<a href="javascript:;" @click="vreset">点这里</a>可以重置
      </p>
    </mu-flex>

    <mu-flex justify-content="center" class="flex-wrapper" align-items="around">
      <mu-divider></mu-divider>
    </mu-flex>

    <mu-flex justify-content="center" class="flex-wrapper" align-items="around">
      <mu-container class="button-wrapper">
        <mu-flex justify-content="center" align-items="center">
          <mu-button full-width color="secondary">
            立即充值
            <mu-icon right value="send"></mu-icon>
          </mu-button>
        </mu-flex>
      </mu-container>
    </mu-flex>
  </div>
</template>

<script>
export default {
  name: 'Product',
  data () {
    return {
      vactiveStep: 0
    };
  },
  computed: {
    vfinished () {
      return this.vactiveStep > 2;
    }
  },
  methods: {
    vhandleNext () {
      this.vactiveStep++;
    },
    vhandlePrev () {
      this.vactiveStep--;
    },
    vreset () {
      this.vactiveStep = 0;
    }
  }
}
</script>

<style scoped>
.flex-wrapper {
  margin-top: 20px;
}
</style>
