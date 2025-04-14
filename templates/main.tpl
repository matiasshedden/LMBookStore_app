<div class="container">
  <!-- Hero Section mejorado -->
  <div class="row bg-light rounded-3 p-4 mt-4 mb-5 shadow-sm">
    <div class="col-lg-9 col-md-8">
      <h1 class="display-4 fw-bold mb-3">LM Bookstore</h1>
      <p class="lead fw-normal mb-2">Somos una empresa independiente enfocada en brindarte los mejores títulos a los mejores precios.</p>
      <p class="lead fw-normal mb-2">Fundada en 2020 por Lucas Guerrero y Matias Shedden, LM Bookstore se enorgullece de su excelente calidad, atención al cliente y ofertas.</p>
      <p class="lead fw-normal">Contando con una impresionante variedad de géneros, nuestro catálogo ofrece lo mejor para el lector contemporáneo.</p>
    </div>
    <div class="col-lg-3 col-md-4 d-none d-md-flex align-items-center justify-content-center">
      <img src="public/img/logo/lm_logo.png" alt="logo" class="img-fluid">
    </div>
  </div>

  <!-- Sección de catálogo mejorada -->
  <div class="mb-5">
    <h2 class="display-6 mb-4 border-bottom pb-2">Explora Nuestro Catálogo</h2>
    
    <div class="row g-4">
      <!-- Búsqueda mejorada -->
      <div class="col-lg-4 col-md-6">
        <div class="card shadow-sm h-100">
          <div class="card-body">
            <h5 class="card-title mb-3">Buscar Libros</h5>
            <form class="d-flex" action="buscar" method="POST">
              <input class="form-control me-2" type="search" placeholder="Título o autor..." aria-label="Search" 
                name="pattern" required>
              <button class="btn btn-primary" type="submit">🔍</button>
            </form>
          </div>
        </div>
      </div>
      
      <!-- Filtro mejorado -->
      <div class="col-lg-4 col-md-6">
        <div class="card shadow-sm h-100">
          <div class="card-body">
            <h5 class="card-title mb-3">Filtrar por Género</h5>
            <form action="filtrar" method="post" class="d-flex">
              <select class="form-select me-2" name="Sel_cat">
                {foreach from = $categorias item = categoria}
                  <option value={$categoria->ide}>{$categoria->nombre}</option>
                {/foreach}
              </select>
              <button class="btn btn-primary" type="submit">Filtrar</button>
            </form>
          </div>
        </div>
      </div>
      
      <!-- Catálogo completo -->
      <div class="col-lg-4 col-md-12">
        <div class="card shadow-sm h-100 text-center">
          <div class="card-body d-flex align-items-center justify-content-center">
            <div>
              <h5 class="card-title mb-3">Ver Todo</h5>
              <a class="btn btn-primary btn-lg px-4" href="{BASE_URL}home#contenedor">
                Catálogo Completo
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>  