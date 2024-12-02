import CoreBluetooth
@testable import MySPMProject

class MockSensor: Sensor {
    var peripheral: CBPeripheral

    init(peripheral: CBPeripheral) {
        self.peripheral = peripheral
    }

    func handleData(_ data: Data) {
        // Mock handling of data
    }
}