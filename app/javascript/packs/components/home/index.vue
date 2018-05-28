<template>
    <div>
        <Featured :movie="featuredMovie"/>
        <MovieList v-for='(category, index) in categories'
                    :key='index'
                    :name='category.name'
                    :movies='category.movies'/>
    </div>
</template>

<script>
     import Featured from './_featured.vue';
     import MovieList from './_movie_list.vue';
    //Dados Fake//
    const featuredMovie = {
        id: 1,
        title: 'Criando uma API completa com ruby on rails',
        description: 'Saber como criar e consumir APIs é fundamental para qualquer programador, então nessa pequena série nós vamos ver o que é essencial para cria uma usando Ruby on Rails.',
        featured_thumbnail_url: 'https://onebitcode.com/wp-content/uploads/2018/05/bg-example.png'

    }


    const categoriesMock = [
      {
        name: "RoR", movies: [
          {id: '1', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '2', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '3', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '4', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '5', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '6', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'}
        ]
      },{
        name: "VueJS", movies: [
          {id: '1', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '2', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '3', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '4', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '5', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '6', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'}
        ]
      },{
        name: "Chatbots", movies: [
          {id: '1', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '2', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '3', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '4', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '5', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '6', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'}
        ]
      }
    ];

    export default {
        data () {
            return { 
                featuredMovie: featuredMovie,
                categories: categoriesMock
            }
        },
        components: {
            'Featured': Featured,
            'MovieList': MovieList
        }
    }
</script>
 
<style scoped>

</style>