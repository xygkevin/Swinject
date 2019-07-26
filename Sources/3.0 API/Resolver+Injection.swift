//
//  Copyright © 2019 Swinject Contributors. All rights reserved.
//

// swiftlint:disable line_length
// swiftlint:disable large_tuple
// sourcery:inline:ResolverInjectionApi
extension Resolver {
    func instance<Type>(of _: Type.Type = Type.self) throws -> Type {
        try resolve(request(tag: NoTag(), arg: ()))
    }

    func instance<Type, Arg1>(of _: Type.Type = Type.self, arg: Arg1) throws -> Type {
        try resolve(request(tag: NoTag(), arg: pack(arg)))
    }

    func instance<Type, Arg1>(of _: Type.Type = Type.self, arg: Arg1) throws -> Type where Arg1: Hashable {
        try resolve(request(tag: NoTag(), arg: pack(arg)))
    }

    func instance<Type, Tag>(of _: Type.Type = Type.self, tagged tag: Tag) throws -> Type where Tag: Hashable {
        try resolve(request(tag: tag, arg: ()))
    }

    func instance<Type, Tag, Arg1>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) throws -> Type where Tag: Hashable {
        try resolve(request(tag: tag, arg: pack(arg)))
    }

    func instance<Type, Tag, Arg1>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) throws -> Type where Tag: Hashable, Arg1: Hashable {
        try resolve(request(tag: tag, arg: pack(arg)))
    }
}

extension Resolver {
    func provider<Type>(of _: Type.Type = Type.self) -> () throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: ())) }
    }

    func provider<Type, Arg1>(of _: Type.Type = Type.self, arg: Arg1) -> () throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg))) }
    }

    func provider<Type, Arg1>(of _: Type.Type = Type.self, arg: Arg1) -> () throws -> Type where Arg1: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg))) }
    }

    func provider<Type, Tag>(of _: Type.Type = Type.self, tagged tag: Tag) -> () throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: ())) }
    }

    func provider<Type, Tag, Arg1>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> () throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg))) }
    }

    func provider<Type, Tag, Arg1>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> () throws -> Type where Tag: Hashable, Arg1: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg))) }
    }
}

extension Resolver {
    func factory<Type, Arg1>(of _: Type.Type = Type.self) -> (Arg1) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0))) }
    }

    func factory<Type, Arg1>(of _: Type.Type = Type.self) -> (Arg1) throws -> Type where Arg1: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0))) }
    }

    func factory<Type, Arg1, Arg2>(of _: Type.Type = Type.self) -> (Arg1, Arg2) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1))) }
    }

    func factory<Type, Arg1, Arg2>(of _: Type.Type = Type.self) -> (Arg1, Arg2) throws -> Type where Arg1: Hashable, Arg2: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1))) }
    }

    func factory<Type, Arg1, Arg2>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0))) }
    }

    func factory<Type, Arg1, Arg2>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2) throws -> Type where Arg1: Hashable, Arg2: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0))) }
    }

    func factory<Type, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self) -> (Arg1, Arg2, Arg3) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1, $2))) }
    }

    func factory<Type, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self) -> (Arg1, Arg2, Arg3) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1, $2))) }
    }

    func factory<Type, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2, Arg3) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0, $1))) }
    }

    func factory<Type, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2, Arg3) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0, $1))) }
    }

    func factory<Type, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, arg: (Arg1, Arg2)) -> (Arg3) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.0, arg.1, $0))) }
    }

    func factory<Type, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, arg: ArgumentBox2<Arg1, Arg2>) -> (Arg3) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.arg1, arg.arg2, $0))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self) -> (Arg1, Arg2, Arg3, Arg4) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1, $2, $3))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self) -> (Arg1, Arg2, Arg3, Arg4) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1, $2, $3))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2, Arg3, Arg4) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0, $1, $2))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2, Arg3, Arg4) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0, $1, $2))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, arg: (Arg1, Arg2)) -> (Arg3, Arg4) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.0, arg.1, $0, $1))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, arg: ArgumentBox2<Arg1, Arg2>) -> (Arg3, Arg4) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.arg1, arg.arg2, $0, $1))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, arg: (Arg1, Arg2, Arg3)) -> (Arg4) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.0, arg.1, arg.2, $0))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, arg: ArgumentBox3<Arg1, Arg2, Arg3>) -> (Arg4) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.arg1, arg.arg2, arg.arg3, $0))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self) -> (Arg1, Arg2, Arg3, Arg4, Arg5) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1, $2, $3, $4))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self) -> (Arg1, Arg2, Arg3, Arg4, Arg5) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack($0, $1, $2, $3, $4))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2, Arg3, Arg4, Arg5) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0, $1, $2, $3))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: Arg1) -> (Arg2, Arg3, Arg4, Arg5) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg, $0, $1, $2, $3))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: (Arg1, Arg2)) -> (Arg3, Arg4, Arg5) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.0, arg.1, $0, $1, $2))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: ArgumentBox2<Arg1, Arg2>) -> (Arg3, Arg4, Arg5) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.arg1, arg.arg2, $0, $1, $2))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: (Arg1, Arg2, Arg3)) -> (Arg4, Arg5) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.0, arg.1, arg.2, $0, $1))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: ArgumentBox3<Arg1, Arg2, Arg3>) -> (Arg4, Arg5) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.arg1, arg.arg2, arg.arg3, $0, $1))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: (Arg1, Arg2, Arg3, Arg4)) -> (Arg5) throws -> Type {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.0, arg.1, arg.2, arg.3, $0))) }
    }

    func factory<Type, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, arg: ArgumentBox4<Arg1, Arg2, Arg3, Arg4>) -> (Arg5) throws -> Type where Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: NoTag(), arg: pack(arg.arg1, arg.arg2, arg.arg3, arg.arg4, $0))) }
    }

    func factory<Type, Tag, Arg1>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0))) }
    }

    func factory<Type, Tag, Arg1>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1) throws -> Type where Tag: Hashable, Arg1: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0))) }
    }

    func factory<Type, Tag, Arg1, Arg2>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2, Arg3) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1, $2))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2, Arg3) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1, $2))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2, Arg3) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2, Arg3) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, tagged tag: Tag, arg: (Arg1, Arg2)) -> (Arg3) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.0, arg.1, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3>(of _: Type.Type = Type.self, tagged tag: Tag, arg: ArgumentBox2<Arg1, Arg2>) -> (Arg3) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.arg1, arg.arg2, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2, Arg3, Arg4) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1, $2, $3))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2, Arg3, Arg4) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1, $2, $3))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2, Arg3, Arg4) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0, $1, $2))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2, Arg3, Arg4) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0, $1, $2))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag, arg: (Arg1, Arg2)) -> (Arg3, Arg4) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.0, arg.1, $0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag, arg: ArgumentBox2<Arg1, Arg2>) -> (Arg3, Arg4) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.arg1, arg.arg2, $0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag, arg: (Arg1, Arg2, Arg3)) -> (Arg4) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.0, arg.1, arg.2, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4>(of _: Type.Type = Type.self, tagged tag: Tag, arg: ArgumentBox3<Arg1, Arg2, Arg3>) -> (Arg4) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.arg1, arg.arg2, arg.arg3, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2, Arg3, Arg4, Arg5) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1, $2, $3, $4))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag) -> (Arg1, Arg2, Arg3, Arg4, Arg5) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack($0, $1, $2, $3, $4))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2, Arg3, Arg4, Arg5) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0, $1, $2, $3))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: Arg1) -> (Arg2, Arg3, Arg4, Arg5) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg, $0, $1, $2, $3))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: (Arg1, Arg2)) -> (Arg3, Arg4, Arg5) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.0, arg.1, $0, $1, $2))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: ArgumentBox2<Arg1, Arg2>) -> (Arg3, Arg4, Arg5) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.arg1, arg.arg2, $0, $1, $2))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: (Arg1, Arg2, Arg3)) -> (Arg4, Arg5) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.0, arg.1, arg.2, $0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: ArgumentBox3<Arg1, Arg2, Arg3>) -> (Arg4, Arg5) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.arg1, arg.arg2, arg.arg3, $0, $1))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: (Arg1, Arg2, Arg3, Arg4)) -> (Arg5) throws -> Type where Tag: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.0, arg.1, arg.2, arg.3, $0))) }
    }

    func factory<Type, Tag, Arg1, Arg2, Arg3, Arg4, Arg5>(of _: Type.Type = Type.self, tagged tag: Tag, arg: ArgumentBox4<Arg1, Arg2, Arg3, Arg4>) -> (Arg5) throws -> Type where Tag: Hashable, Arg1: Hashable, Arg2: Hashable, Arg3: Hashable, Arg4: Hashable, Arg5: Hashable {
        return { try self.resolve(request(tag: tag, arg: pack(arg.arg1, arg.arg2, arg.arg3, arg.arg4, $0))) }
    }
}

// sourcery:end