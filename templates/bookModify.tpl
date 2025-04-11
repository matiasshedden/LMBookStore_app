{include 'templates/header.tpl'}
{include 'templates/navbar.tpl'}

    <div class='container mb-3'>
        <h2>Modificar libro</h2>
        {* <p>(No se podran modificar la id o categoria)</p> *}
        <div class="row">
            <div class="col-4">
                <img class='mt-5 rounded mx-auto d-block img-thumbnail' src="public/img/books/portada-generica.jpg" width="300" height="150">
                <div class="mt-3 row">
                    <form action="modif" method="POST">
                        <input type="text" name="id" value="{$libro->id}" readonly>
                        <input type="text" name="titulo" value="{$libro->titulo}">
                        <input type="text" name="autor" value="{$libro->autor}">
                        <input type="text" name="precio" value="{$libro->precio}">
                        {* <input type="text" name="categoria" value="{$libro->nombre}" readonly> *}
                        <select name="Sel_cat">
                            {foreach from = $categorias item = categoria}
                                <option value={$categoria->ide}>{$categoria->nombre}</option>
                            {/foreach}
                        <select>

                        <button class='btn btn-success btn-sm' type="submit">Modificar</button>
                        {* <a class='btn btn-success btn-sm' href="{BASE_URL}modif/{$libro->id}">modificar valores</a> *}
                    </form>
                </div>
            </div>
    </div>
    <a class="btn btn-dark mt-5" href="{BASE_URL}menuAdmin">Volver al catalogo</a>
</div>

{include 'templates/footer.tpl'}



