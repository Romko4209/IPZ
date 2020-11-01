import Foundation


class Complex{
    private var a:Double
    private var b:Double
    
    func getA() -> Double{
        return self.a
    }

    func getB() -> Double{
        return self.b
    }
    
    func set(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    
    
    init(a:Double,b:Double) {
        self.a = a
        self.b = b
    }
    
    func show(){
        if b>=0{
            print("\(a)+\(b)i")
        }else{
            print("\(a)\(b)i")
        }
    }
    
    func add(complex: Complex) -> Complex {
        return Complex(a: self.getA() + complex.getA(),
                       b: self.getB() + complex.getB())
    }
    
    func sub(complex: Complex) -> Complex {
        return Complex(a: self.getA() - complex.getA(),
                       b: self.getB() - complex.getB())
    }
    
    func mul(complex: Complex) -> Complex {
        return Complex(a: self.getA() * complex.getA() - self.getB() * complex.getB(),
                       b: self.getA() * complex.getB() + self.getB() * complex.getA())
    }
    
    func div(complex: Complex) -> Complex {
        let a = self.getA() * complex.getA() + self.getB() * complex.getB()
        let b = self.getB() * complex.getA() - self.getA() * complex.getB()
        let dilnuk = pow(complex.getA(), 2) + pow(complex.getB(), 2)
        return Complex(a: a/dilnuk,b: b/dilnuk)
    }
    
    func equ(complex: Complex) -> Bool {
        return self.getA() == complex.getA() && self.getB() == complex.getB() ? true : false
    }
    
}


let chislo1 = Complex(a: 4, b: 5)
let chislo2 = Complex(a:3, b: 3)
chislo1.show()
chislo2.show()
var chislo3 = chislo1.add(complex: chislo2)
chislo3.show()
chislo3 = chislo1.sub(complex: chislo2)
chislo3.show()
chislo3 = chislo1.mul(complex: chislo2)
chislo3.show()
chislo3 = chislo1.div(complex: chislo2)
chislo3.show()
print(chislo1.equ(complex: chislo2))

