CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    rol VARCHAR(255)
);

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    rol_id int NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    FOREIGN KEY rol_id REFERENCES roles.id
);

CREATE TABLE materiales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad >= 0),
    proveedor VARCHAR(255) NOT NULL
);


CREATE TABLE proyectos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    presupuesto DECIMAL(10,2) NOT NULL CHECK (presupuesto >= 0),
    cliente VARCHAR(255) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL
);


CREATE TABLE asignacion_material (
    id SERIAL PRIMARY KEY,
    material_id INT NOT NULL,
    proyecto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    FOREIGN KEY material_id REFERENCES materiales.id,
    FOREIGN KEY proyecto_id REFERENCES proyectos.id
);

CREATE TABLE reportes ( 
    id SERIAL PRIMARY KEY,
    proyecto_id INT NOT NULL,
    fecha DATE NOT NULL,
    contenido TEXT NOT NULL,
    FOREIGN KEY proyecto_id REFERENCES proyectos.id
);
