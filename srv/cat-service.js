const SapCfAxios = require('sap-cf-axios').default;
const destination = SapCfAxios('My-Destination');

module.exports = (srv) => {
    srv.on('READ', 'Users', async (req) => {
        let response = await destination({
            method: 'GET',
            url: "/MyOtherService",
            headers: {
                "content-type": "application/json"
            }
        });
        return response.data.Resources.map((user) => ({
            id: user.id,
            userName: user.userName,
            name: user.displayName,
            addresses: user.addresses,
            emails: user.emails.map((mail) => { return { value: mail.value } })
        }));
    })
}