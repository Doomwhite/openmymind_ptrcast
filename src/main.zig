const std = @import("std");

const User = struct {
    id: u32,
    name: []const u8,
};

const Node = struct {
    next: ?*Node,
};

pub fn main() !void {
    var user1 = User{ .id = 1, .name = "Leto" };
    const node1: *Node = @ptrCast(&user1);
    node1.next = null;

    std.debug.print("{}\n", .{node1});
    std.debug.print("{d}\n", .{user1.id}); // added
    std.debug.print("{s}\n", .{user1.name}); // added
}
