<template lang="pug">
  .blogIndex
    .blogs
      .blogCard(v-for="blog in blogs" :key="blog.id")
        .blogCard__title(v-text="blog.title")
        .blogCard__body(v-text="blog.body")
</template>

<script lang="ts">
import Vue from 'vue'
import axios from 'axios';

export default Vue.extend({
  data() {
    return {
      blogs: []
    }
  },
  methods: {
    fetchBlogs: function() {
      axios.get(
        `http://localhost:3000/api/v1/blogs`
      )
      .then((response) => {
        this.blogs = response.data.blogs
      })
      .catch((error) => {
        
      });
    }
  },
  created() {
    this.fetchBlogs()
  }
})
</script>

<style lang="scss" scoped>
.blogIndex {
  .blogs {
    .blogCard {
      &__title {
        font-size: 1.4rem;
        font-weight: bold;
      }
    }
  }
}
</style>