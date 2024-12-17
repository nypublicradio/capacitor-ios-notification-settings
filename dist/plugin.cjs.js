'use strict';

var core = require('@capacitor/core');

const capacitorIosNotificationSettings = core.registerPlugin('capacitorIosNotificationSettings', {
    web: () => Promise.resolve().then(function () { return web; }).then((m) => new m.capacitorIosNotificationSettingsWeb()),
});

class capacitorIosNotificationSettingsWeb extends core.WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
}

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    capacitorIosNotificationSettingsWeb: capacitorIosNotificationSettingsWeb
});

exports.capacitorIosNotificationSettings = capacitorIosNotificationSettings;
//# sourceMappingURL=plugin.cjs.js.map
