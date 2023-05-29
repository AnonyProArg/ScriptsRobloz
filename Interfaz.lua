-- Definir la interfaz

local interfaz = {

    secciones = {},

    seccionActual = nil,

}

-- Inicializar la interfaz

function interfaz:init()

    self.secciones = {}

    self.seccionActual = nil

end

-- Agregar una sección a la interfaz

function interfaz:agregarSeccion(nombre)

    local seccion = {

        nombre = nombre,

        botones = {},

    }

    table.insert(self.secciones, seccion)

end

-- Cambiar a una sección específica

function interfaz:cambiarSeccion(nombre)

    for _, seccion in ipairs(self.secciones) do

        if seccion.nombre == nombre then

            self.seccionActual = seccion

            break

        end

    end

end

-- Agregar un botón a la sección actual

function interfaz:agregarBoton(nombre, accion)

    if self.seccionActual then

        local boton = {

            nombre = nombre,

            accion = accion,

        }

        table.insert(self.seccionActual.botones, boton)

    end

end

-- Mostrar la interfaz

function interfaz:mostrar()

    -- Imprimir el fondo morado

    print("\27[45m")

    -- Mostrar las secciones una debajo de otra

    print("\27[30mSecciones:")

    for i, seccion in ipairs(self.secciones) do

        print(i .. ". " .. seccion.nombre)

    end

    print("")

    -- Mostrar los botones y opciones de la sección actual

    if self.seccionActual then

        print("\27[30mSección actual: " .. self.seccionActual.nombre)

        print("Botones:")

        for i, boton in ipairs(self.seccionActual.botones) do

            print(i .. ". " .. boton.nombre)

        end

        print("")

    else

        print("No se ha seleccionado ninguna sección.")

    end

    -- Agregar el botón de créditos y el texto de derechos

    print("\27[30mCréditos:")

    print("- Créditos")

    print("\27[30mTodos los derechos para AnonyproArg, creador de la interfaz.")

    -- Restaurar los colores predeterminados

    print("\27[0m")

end

-- Crear una instancia de la interfaz

local miInterfaz = interfaz:init()

-- Ejemplo de uso en otro script

miInterfaz:agregarSeccion("Sección 1")

miInterfaz:agregarBoton("Botón 1.1", function() print("Acción del Botón 1.1") end)

miInterfaz:agregarBoton("Botón 1.2", function() print("Acción del Botón 1.2") end)

miInterfaz:agregarSeccion("Sección 2")

miInterfaz:agregarBoton("Botón 2.1", function() print("Acción del Botón 2.1") end)

miInterfaz:agregarBoton("Botón 2.2", function() print("Acción del Botón 2.2") end)

miInterfaz:cambiarSeccion("Sección 1")

miInterfaz:mostrar()

