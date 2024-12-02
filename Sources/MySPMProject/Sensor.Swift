import CoreBluetooth

public protocol Sensor {
    var peripheral: CBPeripheral { get }
    func handleData(_ data: Data)
}

public class GenericSensor: Sensor {
    public var peripheral: CBPeripheral

    public init(peripheral: CBPeripheral) {
        self.peripheral = peripheral
    }

    public func handleData(_ data: Data) {
        // Handle the data received from the sensor
    }
}