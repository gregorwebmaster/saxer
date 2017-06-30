function OpenAPI() {
    this.openApiUrl = appCustom.server + '/openapi/';
}
// settings of endpoints
OpenAPI.prototype.getendpoint = function (action, data) {
    data = data || '';
    if (action == 'projectSettings') {
        return this.openApiUrl + 'getprojectsettings/' + data;
    } else if (action == 'custom') {
        return this.openApiUrl + data;
    }
};

// master function
OpenAPI.prototype.getData = function (endpoint) {

    return m.request({
        method: "GET",
        url: endpoint,
    });
};

var DATA_CACHE = DATA_CACHE || {};
OpenAPI.prototype.makeCall = function (endpoint, cache) {
    var cache = cache || true;

    if (!DATA_CACHE[endpoint] && cache) DATA_CACHE[endpoint] = this.getData(endpoint);

    return DATA_CACHE[endpoint];
};

OpenAPI.prototype.getProjectSettings = function(id) {
    var id = id || 0;

        var endpoint = this.getendpoint('projectSettings', id);
        return this.makeCall(endpoint);
}