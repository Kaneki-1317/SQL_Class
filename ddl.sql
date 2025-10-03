CREATE DATABASE IF NOT EXISTS `ecommerce_zapatos`;
USE `ecommerce_zapatos`;

CREATE TABLE `usuarios`(
    `usuarios_id` int NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(50) DEFAULT NULL,
    `apellido` VARCHAR(50) DEFAULT NULL,
    `correo` VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (`usuarios_id`)
);

CREATE TABLE `pedidos` (
    `pedido_id` int NOT NULL AUTO_INCREMENT,
    `usuarios_id` int DEFAULT NULL,
    `fecha_pedido` date DEFAULT NULL,
    `total` decimal(10,2) DEFAULT NULL,
    PRIMARY KEY (`pedido_id`),
    KEY `usuarios_id` (`usuarios_id`),
    CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`usuarios_id`)
);

CREATE TABLE `Producto` (
    `producto_id` INT AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `precio_unitario` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    `precio_venta` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (`producto_id`)
);

CREATE TABLE `PedidoProducto`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `pedido_id` INT NOT NULL,
    `producto_id` INT NOT NULL,
    `cantidad` INT NOT NULL DEFAULT 1,
    PRIMARY KEY(`id`)
);

ALTER TABLE `PedidoProducto` ADD FOREIGN KEY(`pedido_id`) REFERENCES `pedidos`(`pedido_id`);

ALTER TABLE `PedidoProducto` ADD CONSTRAINT `Productos_producto_id_fk` FOREIGN KEY(`producto_id`) REFERENCES `Productos`(`producto_id`);

CREATE TABLE `PedidoProductoCompuesta`(
    `pedido_id` INT NOT NULL,
    `producto_id` INT NOT NULL,
    `cantidad` INT NOT NULL DEFAULT 1,
    PRIMARY KEY(`pedido_id`, `producto_id`),
    FOREIGN KEY(`pedido_id`) REFERENCES `pedidos`(`pedido_id`),
    FOREIGN KEY(`producto_id`) REFERENCES `Producto`(`producto_id`)
);