.class public Lcom/android/js/webview/AndroidJSActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AndroidJSActivity.java"


# static fields
.field public static _startedNodeAlready:Z


# instance fields
.field public myWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-string v0, "node"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/js/webview/AndroidJSActivity;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/js/webview/AndroidJSActivity;->handleIntentUrl(Ljava/lang/String;)V

    return-void
.end method

.method private handleIntentUrl(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 132
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/js/webview/AndroidJSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 136
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/js/webview/AndroidJSActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not resolve intent url \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NODEJS-MOBILE"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    sget p1, Lcom/android/js/R$string;->intent_url_failed:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public configureWebview(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/common/JavaWebviewBridge;

    const-string v2, "com.android.js.webview.MainActivity"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/js/common/JavaWebviewBridge;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V

    const-string p1, "android"

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 87
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 88
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 93
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/myapp/views/index.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/android/js/webview/AndroidJSActivity$2;

    invoke-direct {v0, p0}, Lcom/android/js/webview/AndroidJSActivity$2;-><init>(Lcom/android/js/webview/AndroidJSActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public native startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public start_node(Landroid/app/Activity;)V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/js/webview/AndroidJSActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/js/webview/AndroidJSActivity$1;-><init>(Lcom/android/js/webview/AndroidJSActivity;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
