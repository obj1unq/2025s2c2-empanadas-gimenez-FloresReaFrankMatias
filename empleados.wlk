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
        deuda = deuda + (dinero - montoAGastar)
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
      deuda = deuda - self.sueldo()
    }
    method cobrarSueldo(){
      const  balanceFinanciero = sueldo - deuda
      if (balanceFinanciero < 0 ){
        deuda = deuda -sueldo   
      }else{
        dinero = dinero + balanceFinanciero
        deuda = 0
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
    method cobrarsueldo(){
       montoCobrado = montoCobrado + self.sueldo()
      self.reseteoEmpanadas()
    }
}

object gimenez {
  var dinero = 300000
  method fondo() {
    return dinero
    
  }
  method pagarSueldoA(_empleado) {
    dinero = dinero - _empleado.sueldo()
    _empleado.cobrarSueldo()
  }
}




