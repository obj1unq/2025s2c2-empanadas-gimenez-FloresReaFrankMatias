//Escribir aqui los objetos

object galvan {
  var sueldo = 15000
  var deuda = 0
  var dinero = 0
    method sueldo() {
        return sueldo
    } 
    method cambiarSueldo(_sueldo) {
      sueldo = _sueldo
    }
   
    method gastar(montoAGastar) {
      if (dinero < montoAGastar){
        deuda = deuda + (  montoAGastar - dinero)
        dinero = 0
      }
      else{
        dinero = dinero - montoAGastar
      }
    }
    method deuda() {
      return deuda 
    }  
    method deudaAcumulada() {
      deuda = deuda + self.sueldo()
    }
    method cobrarSueldo(){
      const  balanceFinanciero = sueldo - deuda
      if (balanceFinanciero < 0 ){
        deuda = deuda -sueldo
        gimenez.descontarSueldo(sueldo)   
      }else{
        dinero = dinero + balanceFinanciero
        deuda = 0
        gimenez.descontarSueldo(sueldo)
      }
    }
    method dinero() {
      return dinero
    } 
}


object baigorria {
  
    var cantEmpanadasVendidas = 0
    const costoEmpanada = 15
    var montoCobrado =0
    method sueldo(){
        return cantEmpanadasVendidas * costoEmpanada
    }
    method vender(_cantidad) {
      cantEmpanadasVendidas = cantEmpanadasVendidas + _cantidad
    }

    method totalCobrado() {
      return self.sueldo()
    }
   
    method reseteoEmpanadas() {
      cantEmpanadasVendidas = 0
    }
    method cobrarSueldo(){
       montoCobrado = montoCobrado + self.sueldo()
      gimenez.descontarSueldo(self.sueldo())
    }
}

object gimenez {
  var property fondo = 300000

  method pagarSueldoA(empleado) {
    self.validarSueldoDe(empleado)
    empleado.cobrarSueldo()
  }
   method validarSueldoDe(empleado){
      if (fondo < empleado.sueldo()) {
          self.error("No tiene suficientes fondos para pagar el sueldo del empleado")
        }
    }
  method descontarSueldo(monto) {
    fondo = fondo - monto
  }
}




