.class Lcom/android/js/webview/AndroidJSActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "AndroidJSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/webview/AndroidJSActivity;->configureWebview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/js/webview/AndroidJSActivity;


# direct methods
.method constructor <init>(Lcom/android/js/webview/AndroidJSActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    return p2

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p3

    .line 118
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 120
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-static {p1, p3}, Lcom/android/js/webview/AndroidJSActivity;->access$000(Lcom/android/js/webview/AndroidJSActivity;Ljava/lang/String;)V

    return p2

    .line 127
    :cond_2
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance p1, Lcom/android/js/webview/AndroidJSActivity$2$1;

    invoke-direct {p1, p0}, Lcom/android/js/webview/AndroidJSActivity$2$1;-><init>(Lcom/android/js/webview/AndroidJSActivity$2;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 144
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 145
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 146
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return p2
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 107
    invoke-static {p1}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/PermissionRequest;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/PermissionRequest;[Ljava/lang/String;)V

    return-void
.end method
