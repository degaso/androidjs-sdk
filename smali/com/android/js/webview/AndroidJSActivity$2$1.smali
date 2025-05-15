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


# direct methods
.method constructor <init>(Lcom/android/js/webview/AndroidJSActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->this$1:Lcom/android/js/webview/AndroidJSActivity$2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 133
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 134
    invoke-static {p2}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2$1;->this$1:Lcom/android/js/webview/AndroidJSActivity$2;

    iget-object p1, p1, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-static {p2}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/js/webview/AndroidJSActivity;->access$000(Lcom/android/js/webview/AndroidJSActivity;Ljava/lang/String;)V

    nop

    :cond_1
    :goto_0
    return v1
.end method
