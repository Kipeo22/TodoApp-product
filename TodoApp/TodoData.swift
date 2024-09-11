import Foundation
import RealmSwift

class TodoData: Object {
    @Persisted var title: String = ""
    @Persisted var detail: String = ""
}
