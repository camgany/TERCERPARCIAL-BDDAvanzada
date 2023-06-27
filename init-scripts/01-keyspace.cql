CREATE KEYSPACE IF NOT EXISTS tienda WITH replication = {'class': 'NetworkTopologyStrategy', 'datacenter1': 3};

USE tienda;

CREATE TABLE IF NOT EXISTS productos (
    id uuid,
    nombre text,
    precio float,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ventas (
    id uuid,
    cantidad int,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ventas_productos (
    id_venta uuid,
    id_producto uuid,
    cantidad int,
    PRIMARY KEY (id_venta, id_producto)
);


