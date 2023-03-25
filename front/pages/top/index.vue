<template lang="pug">
  .userShow
    .user
      .user__name(v-text="user.name")
      .user__profile 
        .user__profile__title
          | プロフィール
        .user__profile__text(v-text="user.profile")
</template>

<script lang="ts">
import Vue from 'vue'
import axios from 'axios';

export default Vue.extend({
  components: {
    // hoge
  },
  data() {
    return {
      user: ""
    }
  },
  // async asyncData({ $axios }) {
  //   const posts = await axios.get(
  //     "http://localhost:3000/api/v1/top"
  //   );
  //   console.log(posts)
  //   return { posts };
  // },
  methods: {
    fetchTop: function() {
      axios.get(
        `http://localhost:3000/api/v1/users/1`
      )
      .then((response) => {
        this.user = response.data.user
      })
      .catch((error) => {
        
      });
    }
  },
  created() {
    this.fetchTop();
  }
})
</script>

<style lang="scss" scoped>
.userShow {
  .user {
    &__name {
      font-size: 1.4rem;
      font-weight: bold;
    }
    &__profile {
      border: 1px solid;
      margin: 16px;
      padding: 16px;
      &__title {
        font-size: 1.2rem;
      }
      &__text {
        font-size: 0.8rem;
      }
    }
  }
}
</style>