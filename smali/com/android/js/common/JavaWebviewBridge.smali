.class public Lcom/android/js/common/JavaWebviewBridge;
.super Ljava/lang/Object;
.source "JavaWebviewBridge.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private app:Lcom/android/js/api/App;

.field private call:Lcom/android/js/api/Call;

.field private className:Ljava/lang/String;

.field private contact:Lcom/android/js/api/Contact;

.field private deepLink:Lcom/android/js/api/DeepLink;

.field private displayApi:Lcom/android/js/api/Display;

.field private hotspot:Lcom/android/js/api/Hotspot;

.field private iconId:I

.field private location:Lcom/android/js/api/Location;

.field private mobileData:Lcom/android/js/api/MobileData;

.field private myWebView:Landroid/webkit/WebView;

.field private notification:Lcom/android/js/api/Notification;

.field private sms:Lcom/android/js/api/SMS;

.field private toast:Lcom/android/js/api/Toast;

.field private wifi:Lcom/android/js/api/Wifi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/js/common/JavaWebviewBridge;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->myWebView:Landroid/webkit/WebView;

    .line 44
    new-instance v0, Lcom/android/js/api/Notification;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/js/api/Notification;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    .line 45
    new-instance v0, Lcom/android/js/api/Call;

    invoke-direct {v0, p1}, Lcom/android/js/api/Call;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    .line 46
    new-instance v0, Lcom/android/js/api/Wifi;

    invoke-direct {v0, p1}, Lcom/android/js/api/Wifi;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    .line 47
    new-instance v0, Lcom/android/js/api/Hotspot;

    invoke-direct {v0, p1}, Lcom/android/js/api/Hotspot;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    .line 48
    new-instance v0, Lcom/android/js/api/Toast;

    invoke-direct {v0, p1}, Lcom/android/js/api/Toast;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    .line 49
    new-instance v0, Lcom/android/js/api/App;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/App;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    .line 50
    new-instance p2, Lcom/android/js/api/Contact;

    invoke-direct {p2, p1}, Lcom/android/js/api/Contact;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    .line 51
    new-instance p2, Lcom/android/js/api/DeepLink;

    invoke-direct {p2, p1}, Lcom/android/js/api/DeepLink;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->deepLink:Lcom/android/js/api/DeepLink;

    .line 52
    new-instance p2, Lcom/android/js/api/Display;

    invoke-direct {p2, p1}, Lcom/android/js/api/Display;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->displayApi:Lcom/android/js/api/Display;

    .line 53
    new-instance p2, Lcom/android/js/api/SMS;

    invoke-direct {p2, p1}, Lcom/android/js/api/SMS;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->sms:Lcom/android/js/api/SMS;

    .line 54
    new-instance p2, Lcom/android/js/api/Location;

    invoke-direct {p2, p1}, Lcom/android/js/api/Location;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->location:Lcom/android/js/api/Location;

    .line 55
    new-instance p2, Lcom/android/js/api/MobileData;

    invoke-direct {p2, p1}, Lcom/android/js/api/MobileData;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->mobileData:Lcom/android/js/api/MobileData;

    .line 56
    iput p3, p0, Lcom/android/js/common/JavaWebviewBridge;->iconId:I

    .line 58
    iput-object p4, p0, Lcom/android/js/common/JavaWebviewBridge;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/js/api/Contact;->addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public connectWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Wifi;->connectWifi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disableHotspot()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->disableHotspot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public disableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disableWifi()V

    return-void
.end method

.method public disconnectWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disconnectWifi()V

    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Hotspot;->enableHotspot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public enableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->enableWifi()V

    return-void
.end method

.method public getAllContacts()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/js/api/Contact;->getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Contact;->getContactByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContactsCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0}, Lcom/android/js/api/Contact;->getContactsCount()I

    move-result v0

    return v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->deepLink:Lcom/android/js/api/DeepLink;

    invoke-virtual {v0}, Lcom/android/js/api/DeepLink;->getLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->location:Lcom/android/js/api/Location;

    invoke-virtual {v0}, Lcom/android/js/api/Location;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    invoke-virtual {v0, p1}, Lcom/android/js/api/App;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWifiScanResults()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiScanResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiState()I

    move-result v0

    return v0
.end method

.method public helloWorld()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java IPC Works"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    const-string v0, "Hello World"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isHotspotEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->mobileData:Lcom/android/js/api/MobileData;

    invoke-virtual {v0}, Lcom/android/js/api/MobileData;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Call;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->sms:Lcom/android/js/api/SMS;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/SMS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultFontSize(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    invoke-virtual {v0, p1}, Lcom/android/js/api/App;->setDefaultFontSize(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->displayApi:Lcom/android/js/api/Display;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Display;->setOrientation(I)V

    return-void
.end method

.method public showNotification(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Notification;->showNotification(I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Toast;->showToast(Ljava/lang/String;I)V

    return-void
.end method
