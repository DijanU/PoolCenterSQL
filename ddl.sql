CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    rol VARCHAR(255) NOT NULL
);

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL
);

CREATE TABLE permisos (
    id SERIAL PRIMARY KEY,
    permiso VARCHAR(255) NOT NULL
);

CREATE TABLE roles_permisos (
    id SERIAL PRIMARY KEY,
    rol_id integer NOT NULL,
    permiso_id integer NOT NULL,
    FOREIGN KEY rol_id REFERENCES roles.id,
    FOREIGN KEY permiso_id REFERENCES permisos.id
);

CREATE TABLE usuarios_roles (
    id SERIAL PRIMARY KEY,
    usuario_id integer NOT NULL,
    rol_id integer NOT NULL,
    FOREIGN KEY rol_id REFERENCES roles.id,
    FOREIGN KEY usuario_id REFERENCES usuarios.id
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
