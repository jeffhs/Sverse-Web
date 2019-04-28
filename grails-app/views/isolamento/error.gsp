<!doctype html>
<html>
<head></head>

<body>
<style>
.div_erro {
    border: 1px solid #EBCCD1;
    background-color: #F2DEDE;
    font-family: verdana;
    font-size: 13px;
    color: #A94442;
    width: 98%;
    height: 23px;
    padding: 10px 10px;
}

.fechar {
    float: right;
    cursor: pointer;
    font-weight: bold;
}
</style>
    <div class="div_erro">
        <span class="erro">Erro..</span>
        <span class="fechar">X</span>
    </div>

<script>
    $(function() {

        $('.fechar').click(function() {
            $('.div_erro').hide();
        });

    });
</script>
</body>
</html>
