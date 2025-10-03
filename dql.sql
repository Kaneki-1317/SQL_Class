USE `ecommerce_zapatos`;
SELECT `pedido_id`, `producto_id`, `cantidad` FROM `PedidoProductoCompuesta`
WHERE `pedido_id` = 1;

SELECT * FROM `usuario`;
SELECT * FROM `pedido`;
SELECT * FROM `PedidoProducto`
WHERE  `pedido_id` = 1; 

SELECT `pedido_id`, `producto_id`, `cantidad` FROM `PedidoProducto`
WHERE `pedido_id` = 1;

SELECT u. *, p.*
FROM `usuarios` as u, `pedidos` p
WHERE u.usuarios_id = p.usuarios_id;

SELECT u.correo, p.fecha_pedido, p.pedido_id, pr.nombre, pr.precio_unitario, pr.precio_venta
FROM `usuarios` as u
INNER JOIN `pedidos` p ON u.usuarios_id = p.usuarios_id
INNER JOIN `PedidoProducto` pp ON p.pedido_id = pp.pedido_id
INNER JOIN `Producto` pr ON pp.producto_id = pr.producto_id;

SELECT u.correo, p.pedido_id, p.fecha_pedido, SUM(pp.cantidad) as 'total_items', pr.nombre, SUM(pp.cantidad * p.total) as 'money_total', pp.cantidad
FROM `usuarios` as u
INNER JOIN `pedidos` as p ON u.usuarios_id = p.usuarios_id
INNER JOIN `PedidoProducto` as pp ON p.pedido_id = pp.pedido_id
INNER JOIN `Producto` as pr ON pp.producto_id = pr.producto_id
WHERE u.correo = 'cristiandres1317@gmial.com'
GROUP BY p.pedido_id, pr.nombre = 'Zapato Deportivo', p.total, pp.cantidad;

