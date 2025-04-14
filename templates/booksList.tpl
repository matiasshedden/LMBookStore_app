{include 'templates/header.tpl'}
{include 'templates/navbar.tpl'}
{include 'templates/main.tpl'}
<div id="contenedor" class='container mb-3'>
    <ul class='list-group mt-5'>
        {foreach from=$libros item=libro}
            <li class='list-group-item'>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="book-info">
                        TITULO: {$libro->titulo} <br>   
                        AUTOR: {$libro->autor} <br> 
                        PRECIO: {$libro->precio} <br> 
                        CATEGORIA: {$libro->nombre}
                        <div class="mt-2">
                            <a class='btn btn-success btn-sm' href="ver/{$libro->id}">DETALLE</a>
                        </div>
                    </div>
                    <div class="book-cover">
                        {if isset($libro->cover_image) && $libro->cover_image}
                            <img src="{$libro->cover_image}" alt="Portada de {$libro->titulo}" class="img-thumbnail" style="width: 120px; height: auto;">
                        {else}
                            <img src="public/img/books/portada-generica.jpg" alt="Portada genérica" class="img-thumbnail" style="width: 120px; height: auto;">
                        {/if}
                    </div>
                </div>
            </li>
        {/foreach}
    </ul>
</div>
{include 'templates/footer.tpl'}