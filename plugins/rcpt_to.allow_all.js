// Allow all traffic to be bridges
exports.hook_rcpt = function (next, connection) {
    return next();
}
