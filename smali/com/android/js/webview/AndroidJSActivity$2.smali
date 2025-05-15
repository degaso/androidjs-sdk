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

    .line 101
    iput-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    .line 113
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p3

    .line 114
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 115
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "req:"

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p3, :cond_0

    return p2

    .line 119
    :cond_0
    const-string p4, "intent://"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 120
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-static {p1, p3}, Lcom/android/js/webview/AndroidJSActivity;->access$000(Lcom/android/js/webview/AndroidJSActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p4, v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p2
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 106
    invoke-static {p1}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/PermissionRequest;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/js/api/Hotspot$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/PermissionRequest;[Ljava/lang/String;)V

    return-void
.end method
