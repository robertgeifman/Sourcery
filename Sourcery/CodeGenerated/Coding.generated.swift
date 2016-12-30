// Generated using Sourcery 0.4.9 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension NSCoder {

    @nonobjc func decode(forKey: String) -> Int {
        // swiftlint:disable force_cast
        return self.decodeInteger(forKey: forKey)
        // swiftlint:enable force_cast
    }

    @nonobjc func decode(forKey: String) -> String {
        // swiftlint:disable:next force_unwrapping
        return (self.decode(forKey: forKey) as String?)!
    }

    @nonobjc func decode(forKey: String) -> Bool {
        // swiftlint:disable force_cast
        return self.decodeBool(forKey: forKey)
        // swiftlint:enable force_cast
    }

    @nonobjc func decode(forKey: String) -> TypeName {
        // swiftlint:disable:next force_unwrapping
        return (self.decode(forKey: forKey) as TypeName?)!
    }

    @nonobjc func decode(forKey: String) -> AccessLevel {
        // swiftlint:disable:next force_unwrapping
        return (self.decode(forKey: forKey) as AccessLevel?)!
    }

    func decode<E, V>(forKey: String) -> [E: V] {
        // swiftlint:disable force_cast
        guard let object = self.decodeObject(forKey: forKey) else {
            return [:]
        }

        return object as! [E:V]
        // swiftlint:enable force_cast
    }

    func decode<E>(forKey: String) -> E? {
        // swiftlint:disable force_cast
        guard let object = self.decodeObject(forKey: forKey) else {
            return nil
        }

        return object as? E
        // swiftlint:enable force_cast
    }

    func decode<E>(forKey: String) -> [E] {
        // swiftlint:disable force_cast
        guard let object = self.decodeObject(forKey: forKey) else {
            return []
        }

        return object as! [E]
        // swiftlint:enable force_cast
    }
}

/*
extension Enum {
    required init?(coder aDecoder: NSCoder) {

         self.cases = aDecoder.decode(forKey: "cases")
         self.rawType = aDecoder.decode(forKey: "rawType")
         self.based = aDecoder.decode(forKey: "based")
        
        super.init(coder: aDecoder)
    }
 
    override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
        aCoder.encode(self.cases, forKey: "cases")
        aCoder.encode(self.rawType, forKey: "rawType")
        aCoder.encode(self.based, forKey: "based")
        
    }
}
*/

/*
extension Enum.Case: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.name = aDecoder.decode(forKey: "name")
         self.rawValue = aDecoder.decode(forKey: "rawValue")
         self.associatedValues = aDecoder.decode(forKey: "associatedValues")
         self.annotations = aDecoder.decode(forKey: "annotations")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.rawValue, forKey: "rawValue")
        aCoder.encode(self.associatedValues, forKey: "associatedValues")
        aCoder.encode(self.annotations, forKey: "annotations")
        
    }
}
*/

/*
extension Enum.Case.AssociatedValue: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.name = aDecoder.decode(forKey: "name")
         self.typeName = aDecoder.decode(forKey: "typeName")
         self.type = aDecoder.decode(forKey: "type")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.typeName, forKey: "typeName")
        aCoder.encode(self.type, forKey: "type")
        
    }
}
*/

/*
extension GenerationContext: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.types = aDecoder.decode(forKey: "types")
         self.typeByName = aDecoder.decode(forKey: "typeByName")
         self.arguments = aDecoder.decode(forKey: "arguments")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.types, forKey: "types")
        aCoder.encode(self.typeByName, forKey: "typeByName")
        aCoder.encode(self.arguments, forKey: "arguments")
        
    }
}
*/

/*
extension Method: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.selectorName = aDecoder.decode(forKey: "selectorName")
         self.parameters = aDecoder.decode(forKey: "parameters")
         self.returnTypeName = aDecoder.decode(forKey: "returnTypeName")
         self.returnType = aDecoder.decode(forKey: "returnType")
         self.accessLevel = aDecoder.decode(forKey: "accessLevel")
        self.isStatic = aDecoder.decodeBool(forKey: "isStatic")
        self.isClass = aDecoder.decodeBool(forKey: "isClass")
        self.isFailableInitializer = aDecoder.decodeBool(forKey: "isFailableInitializer")
         self.annotations = aDecoder.decode(forKey: "annotations")
         self.__parserData = aDecoder.decode(forKey: "__parserData")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.selectorName, forKey: "selectorName")
        aCoder.encode(self.parameters, forKey: "parameters")
        aCoder.encode(self.returnTypeName, forKey: "returnTypeName")
        aCoder.encode(self.returnType, forKey: "returnType")
        aCoder.encode(self.accessLevel, forKey: "accessLevel")
        aCoder.encode(self.isStatic, forKey: "isStatic")
        aCoder.encode(self.isClass, forKey: "isClass")
        aCoder.encode(self.isFailableInitializer, forKey: "isFailableInitializer")
        aCoder.encode(self.annotations, forKey: "annotations")
        aCoder.encode(self.__parserData, forKey: "__parserData")
        
    }
}
*/

/*
extension Method.Parameter: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.argumentLabel = aDecoder.decode(forKey: "argumentLabel")
         self.name = aDecoder.decode(forKey: "name")
         self.typeName = aDecoder.decode(forKey: "typeName")
         self.type = aDecoder.decode(forKey: "type")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.argumentLabel, forKey: "argumentLabel")
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.typeName, forKey: "typeName")
        aCoder.encode(self.type, forKey: "type")
        
    }
}
*/

/*
extension Protocol {
    required init?(coder aDecoder: NSCoder) {

        
        super.init(coder: aDecoder)
    }
 
    override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
        
    }
}
*/

/*
extension Struct {
    required init?(coder aDecoder: NSCoder) {

        
        super.init(coder: aDecoder)
    }
 
    override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
        
    }
}
*/

/*
extension Type: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.typealiases = aDecoder.decode(forKey: "typealiases")
        self.isExtension = aDecoder.decodeBool(forKey: "isExtension")
         self.accessLevel = aDecoder.decode(forKey: "accessLevel")
        self.isGeneric = aDecoder.decodeBool(forKey: "isGeneric")
         self.localName = aDecoder.decode(forKey: "localName")
         self.variables = aDecoder.decode(forKey: "variables")
         self.methods = aDecoder.decode(forKey: "methods")
         self.annotations = aDecoder.decode(forKey: "annotations")
         self.inheritedTypes = aDecoder.decode(forKey: "inheritedTypes")
         self.containedTypes = aDecoder.decode(forKey: "containedTypes")
         self.parentName = aDecoder.decode(forKey: "parentName")
         self.parent = aDecoder.decode(forKey: "parent")
         self.supertype = aDecoder.decode(forKey: "supertype")
         self.__parserData = aDecoder.decode(forKey: "__parserData")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.typealiases, forKey: "typealiases")
        aCoder.encode(self.isExtension, forKey: "isExtension")
        aCoder.encode(self.accessLevel, forKey: "accessLevel")
        aCoder.encode(self.isGeneric, forKey: "isGeneric")
        aCoder.encode(self.localName, forKey: "localName")
        aCoder.encode(self.variables, forKey: "variables")
        aCoder.encode(self.methods, forKey: "methods")
        aCoder.encode(self.annotations, forKey: "annotations")
        aCoder.encode(self.inheritedTypes, forKey: "inheritedTypes")
        aCoder.encode(self.containedTypes, forKey: "containedTypes")
        aCoder.encode(self.parentName, forKey: "parentName")
        aCoder.encode(self.parent, forKey: "parent")
        aCoder.encode(self.supertype, forKey: "supertype")
        aCoder.encode(self.__parserData, forKey: "__parserData")
        
    }
}
*/

/*
extension TypeName: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.name = aDecoder.decode(forKey: "name")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.name, forKey: "name")
        
    }
}
*/

/*
extension Typealias: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.aliasName = aDecoder.decode(forKey: "aliasName")
         self.typeName = aDecoder.decode(forKey: "typeName")
         self.parent = aDecoder.decode(forKey: "parent")
         self.parentName = aDecoder.decode(forKey: "parentName")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.aliasName, forKey: "aliasName")
        aCoder.encode(self.typeName, forKey: "typeName")
        aCoder.encode(self.parent, forKey: "parent")
        aCoder.encode(self.parentName, forKey: "parentName")
        
    }
}
*/

/*
extension Variable: NSCoding {
    required init?(coder aDecoder: NSCoder) {

         self.name = aDecoder.decode(forKey: "name")
         self.typeName = aDecoder.decode(forKey: "typeName")
         self.type = aDecoder.decode(forKey: "type")
        self.isComputed = aDecoder.decodeBool(forKey: "isComputed")
        self.isStatic = aDecoder.decodeBool(forKey: "isStatic")
         self.readAccess = aDecoder.decode(forKey: "readAccess")
         self.writeAccess = aDecoder.decode(forKey: "writeAccess")
         self.annotations = aDecoder.decode(forKey: "annotations")
         self.__parserData = aDecoder.decode(forKey: "__parserData")
        
        
    }
 
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.typeName, forKey: "typeName")
        aCoder.encode(self.type, forKey: "type")
        aCoder.encode(self.isComputed, forKey: "isComputed")
        aCoder.encode(self.isStatic, forKey: "isStatic")
        aCoder.encode(self.readAccess, forKey: "readAccess")
        aCoder.encode(self.writeAccess, forKey: "writeAccess")
        aCoder.encode(self.annotations, forKey: "annotations")
        aCoder.encode(self.__parserData, forKey: "__parserData")
        
    }
}
*/
