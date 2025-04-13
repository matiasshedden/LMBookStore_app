{include 'templates/header.tpl'}
{include 'templates/navbar.tpl'}

    <div class='container mb-3'>
        <h2>Modificar libro</h2>
        <div class="row">
            <div class="col-4">
                {if $libro->cover_image}
                    <img class='mt-5 rounded mx-auto d-block img-thumbnail' src="{$libro->cover_image}" width="300" height="150" alt="{$libro->titulo}">
                {else}
                    <img class='mt-5 rounded mx-auto d-block img-thumbnail' src="public/img/books/portada-generica.jpg" width="300" height="150" alt="portada genérica">
                {/if}
                <div class="mt-3 row">
                    <form action="modif" method="POST" enctype="multipart/form-data">
                        <input type="text" name="id" value="{$libro->id}" readonly>
                        <input type="text" name="titulo" value="{$libro->titulo}">
                        <input type="text" name="autor" value="{$libro->autor}">
                        <input type="text" name="precio" value="{$libro->precio}">
                        
                        {* Campo para seleccionar nueva imagen de portada *}
                    <div class="mb-3">
                        <label for="cover_image" class="form-label">Cambiar portada</label>
                        <input type="file" class="form-control" id="cover_image" name="cover_image" accept="image/jpeg,image/png,image/webp">
                        <small class="text-muted">Deja en blanco para mantener la portada actual</small>
                    </div>
                    
                    <select name="Sel_cat">
                        {foreach from = $categorias item = categoria}
                            <option value={$categoria->ide} {if $libro->id_categoria == $categoria->ide}selected{/if}>{$categoria->nombre}</option>
                        {/foreach}
                    </select>

                        <button class='btn btn-success btn-sm' type="submit">Modificar</button>
                    </form>
                </div>
            </div>
    </div>
    <a class="btn btn-dark mt-5" href="{BASE_URL}menuAdmin">Volver al catalogo</a>
</div>

{include 'templates/footer.tpl'}



