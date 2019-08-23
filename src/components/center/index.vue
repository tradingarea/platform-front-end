<template>
  <div id="center">

    <mu-flex class="flex-wrapper" justify-content="around" >
      <mu-avatar color="teal" size="100">
        W
      </mu-avatar>
    </mu-flex>

    <mu-flex class="flex-wrapper" align-items="around">
      <mu-container>
        <mu-paper :z-depth="2">
          <mu-list>
            <mu-list-item>
              <mu-list-item-action>
                <mu-icon value="info"></mu-icon>
              </mu-list-item-action>
              <mu-list-item-content>
                <mu-list-item-title>会员权益</mu-list-item-title>
              </mu-list-item-content>
            </mu-list-item>
          </mu-list>
        </mu-paper>
      </mu-container>
    </mu-flex>

    <mu-flex class="flex-wrapper" align-items="around">
      <mu-container>
        <mu-paper :z-depth="2">
          <mu-list>
            <mu-list-item>
              <mu-list-item-action>
                <mu-icon value="settings"></mu-icon>
              </mu-list-item-action>
              <mu-list-item-content>
                <mu-list-item-title>Setting</mu-list-item-title>
              </mu-list-item-content>
            </mu-list-item>
            <mu-divider></mu-divider>
            <mu-list-item>
              <mu-list-item-action>
                <mu-icon value="help_outline"></mu-icon>
              </mu-list-item-action>
              <mu-list-item-content>
                <mu-list-item-title>Help</mu-list-item-title>
              </mu-list-item-content>
            </mu-list-item>
            <mu-divider></mu-divider>
            <mu-list-item>
              <mu-list-item-action>
                <mu-icon value="power_settings_new"></mu-icon>
              </mu-list-item-action>
              <mu-list-item-content>
                <mu-list-item-title>Exit</mu-list-item-title>
              </mu-list-item-content>
            </mu-list-item>
          </mu-list>
        </mu-paper>
      </mu-container>
    </mu-flex>
  </div>
</template>

<script>
export default {
  name: 'Index'
}
</script>

<style scoped>
.flex-wrapper {
  margin-top: 20px;
}
</style>
