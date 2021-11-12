// Enable non-TLS connections to bridge
exports.hook_capabilities = (next, connection) => {
    const methods = ['PLAIN', 'LOGIN'];
    connection.capabilities.push(`AUTH ${methods.join(' ')}`);
    connection.notes.allowed_auth_methods = methods;
    next();
};
