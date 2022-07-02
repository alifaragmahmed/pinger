<script>

    function _search() {
        var url = "{{ $filter_url }}?"+$.param(filter.filter);
        search(table, url);
    }
    
    function _clear() {
        showPage('{{ $page_url }}');
    }
     
    var filter = new Vue({
        el: '#filter',
        data: { 
            filter: {}
        },
        methods: { 
        },
        computed: {
        },
        watch: {
        }
    });
</script>