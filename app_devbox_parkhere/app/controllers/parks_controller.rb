class ParksController < ApplicationController
  def pictures
  end

  def services
  end
    
  def find
      @estacionamientos = Estacionamiento.all
  end

 
  def rent
      @estaciona = Estacionamiento.find(params[:id])
      @alquiler = Alquiler.new
  end
    
  def rent_reserved
      @alquiler = Alquiler.new
      @alquiler.fe_fechainicio = params[:fe_fechainicio]
      @alquiler.fe_fechafin = params[:fe_fechafin]
      @alquiler.nu_hora = 1.0
      @alquiler.nu_precio = params[:nu_precioporhora]

      if @alquiler.save
          redirect_to :action => :find
        end
  end
    
  def find_map
  end
    
  def register
      @estacionamiento = Estacionamiento.new
  end

  def register_park
      @estacionamiento = Estacionamiento.new
      @estacionamiento.no_descriptivo=params[:no_descriptivo]
      @estacionamiento.no_direccion=params[:no_direccion]
      @estacionamiento.nu_longitud=params[:nu_longitud]
      @estacionamiento.nu_latitud=params[:nu_latitud]
      @estacionamiento.no_telefonofijo=params[:no_telefonofijo]
      @estacionamiento.nu_precioporhora=params[:nu_precioporhora]
      @estacionamiento.im_foto=params[:im_foto]
      @estacionamiento.no_ubicacion=params[:no_ubicacion]
      @estacionamiento.fl_situacion=params[:fl_situacion]
      @estacionamiento.tx_otros=params[:tx_otros]
      @estacionamiento.fe_inicioreserva =params[:fe_inicioreserva]

      if @estacionamiento.save
          redirect_to :action => :parks_find_path
        end
  end

  def register_services
  end
    
  def register_images
      
  end   
    
  def rent_comentary
      
  end

  def find_rents
      
  end
    
end
