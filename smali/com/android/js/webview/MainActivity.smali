.class public Lcom/android/js/webview/MainActivity;
.super Lcom/android/js/webview/AndroidJSActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/js/webview/AndroidJSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSystemUI()V
    .locals 2

    .line 45
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/js/webview/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    const/4 v1, 0x2

    .line 52
    invoke-static {v0, v1}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/js/webview/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/android/js/webview/AndroidJSActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/js/webview/MainActivity;->hideSystemUI()V

    .line 28
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 29
    invoke-static {p0, p0}, Lcom/android/js/other/PermissionRequest;->checkAndAskForPermissions(Landroid/app/Activity;Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p0}, Lcom/android/js/webview/MainActivity;->start_node(Landroid/app/Activity;)V

    const p1, 0x7f0700d9

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/android/js/webview/MainActivity;->myWebView:Landroid/webkit/WebView;

    const/high16 p1, 0x7f0a0000

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->configureWebview(I)V

    return-void
.end method
