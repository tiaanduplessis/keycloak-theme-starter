# keycloak-theme-starter

> Starter theme for [keycloak](https://www.keycloak.org/).

## Setup

```sh
$ docker-compose up
```

The Keycloak server will now be available on <http://localhost:8080>. You can log into the Administration Console using “**admin**” as both username and password. The example application will be available on <http://localhost:5000>.


## Using

To use it in your Keycloak realm:

1. Create a Keycloak Realm and Client.
2. Sign into your realm's admin console.
3. Go to the “Themes” tab in “Realm Settings”
4. Select “starter” as your login theme, and click on “Save”

The theme will now be used for all Keycloak log in screens on your realm - including logging in to the admin console. If you sign out, you should see the themed log in screen.

### Emails

The local Keycloak server includes MailDev, a mock SMTP server that you can use to receive and view Keycloak e-mails. It is available on <http://localhost:8081>.

To set up the local Keycloak server to send e-mails to MailDev:

1. Log in to [the local Keycloak server](http://localhost:8080).
2. Go to the “Email” tab in “Realm Settings”
3. Enter the following details:

    - Host: **maildev**
    - From: **keycloak@keycloak**

4. Click on “Save”
5. Click on “Admin” in the top-right-hand corner of the page, and click on “Manage Account”
6. Add an e-mail address to the admin account. 
   
It doesn’t matter what e-mail address you add, as all e-mails will be caught by MailDev. But you do need to add one, otherwise Keycloak will not send e-mails for this account. The local Keycloak server should now be set up to send e-mails to MailDev. To check that it’s working:

1. Click on the “Back to Security Admin Console” link
2. Click on the “Login” tab in “Realm Settings”
3. Enable “Forgot password”, and click on “Save”
4. Sign out.
5. On the Keycloak log in screen, click on the “Forgot your password?” link
6. Enter your username (**admin**) in the text field, and submit the form.
7. Visit [MailDev](http://localhost:8081). You should see a reset password e-mail from Keycloak.


## License

MIT


