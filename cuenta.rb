class Usuario
    attr_reader :user, :acc
    def initialize(user, acc)
      @user = user
      @acc = [] 
      @acc = @acc.push(acc)

      def saldototal
        acc = self.acc
        acc.saldo
      end
    end
end


class CuentaBancaria
  attr_accessor :saldo
  attr_reader :banco, :numero_de_cuenta
  def initialize(numero_de_cuenta, saldo=0, banco)
    @numero_de_cuenta = numero_de_cuenta
    @saldo = saldo
    @banco = banco
  end

  
  def transferir(monto, cuenta)
    @saldo = @saldo - monto 
    cuenta.saldo = cuenta.saldo + monto
  end

  def info
    puts "
    #{@numero_de_cuenta} 
    #{@saldo} 
    #{@banco}
    "
  end

end


acc1 = CuentaBancaria.new(1122334455, 5000, 'Bancoestado')
acc2 = CuentaBancaria.new(1122334456, 5000, 'Scotiabank')

user1 = Usuario.new('Pepe', acc1) 
user2 = Usuario.new('owo', acc2)

acc1.transferir(5000, acc2)