module PetsHelper
    def fecha(fecha_a_formatear)
        fecha_a_formatear.strftime("%d/%m/%Y")
    end
end
