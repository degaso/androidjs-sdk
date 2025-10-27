.class public Lcom/android/js/webview/MainActivity;
.super Lcom/android/js/webview/AndroidJSActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/js/webview/AndroidJSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSystemUI()V
    .locals 2

    .line 66
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/js/webview/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 73
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/js/webview/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 87
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

    .line 25
    invoke-super {p0, p1}, Lcom/android/js/webview/AndroidJSActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/js/webview/MainActivity;->hideSystemUI()V

    .line 31
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 32
    invoke-static {p0, p0}, Lcom/android/js/other/PermissionRequest;->checkAndAskForPermissions(Landroid/app/Activity;Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, p0}, Lcom/android/js/webview/MainActivity;->start_node(Landroid/app/Activity;)V

    const p1, 0x7f0700d9

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/android/js/webview/MainActivity;->myWebView:Landroid/webkit/WebView;

    const/high16 p1, 0x7f0a0000

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/js/webview/MainActivity;->configureWebview(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "try { handleAppIntent(\'"

    .line 49
    invoke-super {p0, p1}, Lcom/android/js/webview/AndroidJSActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received intent with URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NODEJS-MOBILE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/android/js/webview/MainActivity;->myWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    return-void

    .line 59
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/js/webview/MainActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'); } catch(e) { console.error(e); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
