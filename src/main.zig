const warn = @import("std").debug.warn;
const ctest = @cImport(@cInclude("ctest.h"));

pub fn main() !void {
    inline for (@typeInfo(ctest).Struct.decls) |decl| {
        warn("{}\n", .{decl.name});
    }
}

