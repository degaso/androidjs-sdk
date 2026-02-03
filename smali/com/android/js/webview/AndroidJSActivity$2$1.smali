.class Lcom/android/js/webview/AndroidJSActivity$2$1;
.super Landroid/webkit/WebViewClient;
.source "AndroidJSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/webview/AndroidJSActivity$2;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/js/webview/AndroidJSActivity$2;

.field final synthetic val$newWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/js/webview/AndroidJSActivity$2;Landroid/webkit/WebView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->this$1:Lcom/android/js/webview/AndroidJSActivity$2;

    iput-object p2, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->val$newWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->val$newWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 182
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->this$1:Lcom/android/js/webview/AndroidJSActivity$2;

    iget-object v0, v0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/js/webview/AndroidJSActivity;->access$000(Lcom/android/js/webview/AndroidJSActivity;Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->val$newWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    :goto_0
    return p1
.end method
