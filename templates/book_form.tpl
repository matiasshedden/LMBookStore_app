{* templates/book-form.tpl *}

<div class="container mt-4">
    <h2>{if isset($book)}Editar Libro{else}Agregar Nuevo Libro{/if}</h2>
    
    <form name="enviar" action="insertar" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="title" class="form-label">Título *</label>
            <input type="text" class="form-control" id="title" name="titulo" 
                   value="{if isset($book)}{$book->titulo}{/if}" required>
        </div>
        
        <div class="mb-3">
            <label for="author" class="form-label">Autor *</label>
            <input type="text" class="form-control" id="autor" name="autor" 
                   value="{if isset($book)}{$book->autor}{/if}" required>
        </div>
        
        <div class="mb-3">
            <label for="category_id" class="form-label">Categoría *</label>
            <select class="form-select" id="category_id" name="Sel_cat" required>
                <option value="">Seleccionar categoría</option>
                {foreach from=$categorias item = categoria}
                    <option value={$categoria->ide}>{$categoria->nombre}</option>
                {/foreach}
            </select>
        </div>
        
        <div class="mb-3">
            <label for="precio" class="form-label">Precio</label>
            <input type="text" class="form-control" id="precio" name="precio"
                value="{if isset($book)}{$book->precio}{/if}" required>
        </div>
        
        <div class="mb-3">
            <label for="cover_image" class="form-label">Imagen de portada</label>
            
            {if isset($book) && $book->cover_image}
                <div class="mb-2">
                    <img src="{$book->cover_image}" alt="{$book->title}" class="img-thumbnail" style="max-height: 200px">
                    <p class="text-muted">Imagen actual. Sube una nueva para reemplazarla.</p>
                </div>
            {/if}
            
            <input type="file" class="form-control" id="cover_image" name="cover_image" accept="image/jpeg,image/png,image/webp">
            <div class="form-text">Formatos permitidos: JPG, PNG, WebP. Tamaño máximo: 2MB</div>
        </div>
        
        <button type="submit" class="btn btn-primary btn-sm">{if isset($book)}Actualizar{else}Guardar{/if}</button>
        <a href="{if isset($book)}../books{else}books{/if}" class="btn btn-secondary btn-sm">Cancelar</a>
    </form>
    <p> </p>
</div>