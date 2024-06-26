import Foundation

public protocol CRUDSource<Model> {
    
    associatedtype Model: CRUDModel
    
    // MARK: - Create
    
    func create(model: Model) async throws
    
    // MARK: - Read
    
    func read(id: Model.ID) async throws -> Model?
    
    func readAll(bounds: Range<[Model].Index>?) async throws -> [Model]
    
    // MARK: - Update
    
    func update(model: Model) async throws
    
    // MARK: - Delete
    
    func delete(id: Model.ID) async throws
    
    func deleteAll() async throws
}

extension CRUDSource {
    public func readAll() async throws -> [Model] {
        try await readAll(bounds: nil)
    }
}

public enum CRUDError: Error {
    case modelAlreadyPresent
    case modelNotPresent
}
