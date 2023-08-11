
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <script src="./js/funciones.js"></script>
    <title>Document</title>
</head>
<body>
    <header class="container">
        <h1 class="container">Prodando :D</h1>
        <ul class="d-flex">
            <li class="m-4">Menu 1</li>
            <li class="m-4">Menu 2</li>
            <li class="m-4">Menu 3</li>
            <li class="m-4">Menu 4</li>
            <li class="m-4">Menu 5</li>
        </ul>

    </header>
    <main>
        <form action="/registro" method="post">
            <label class="d-block" for="nombre">Nombre</label>
            <!-- id es para CSS y JS ------- name es para Java-->
            <input type="text" id="nombre" name="nombre">
            <label class="d-block" for="apellido">Apellido</label>
            <input type="text" id="apellido" name="apellido">
            <label class="d-block" for="identificacion">Identificación</label>
            <input type="text" id="identificacion" name="identificacion">
            <label class="d-block" for="codigo">Código</label>
            <input type="number" id="codigo" name="codigo" min="1" max="50">
            <button>Crear Uusario</button>
        </form>
    </main>
    
</body>
</html>