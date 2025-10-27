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

    .line 104
    iput-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onJsAlert$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$1(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method static synthetic lambda$onJsPrompt$3(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 150
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onJsPrompt$4(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 160
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    return p2

    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p3

    .line 165
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 167
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity$2;->this$0:Lcom/android/js/webview/AndroidJSActivity;

    invoke-static {p1, p3}, Lcom/android/js/webview/AndroidJSActivity;->access$000(Lcom/android/js/webview/AndroidJSActivity;Ljava/lang/String;)V

    return p2

    .line 174
    :cond_2
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance p1, Lcom/android/js/webview/AndroidJSActivity$2$1;

    invoke-direct {p1, p0, p2}, Lcom/android/js/webview/AndroidJSActivity$2$1;-><init>(Lcom/android/js/webview/AndroidJSActivity$2;Landroid/webkit/WebView;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 202
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 203
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return p2
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p4}, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    const p4, 0x104000a

    .line 118
    invoke-virtual {p1, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 119
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {p3, p4}, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsResult;)V

    const v0, 0x104000a

    .line 130
    invoke-virtual {p1, v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {p3, p4}, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    const/high16 p4, 0x1040000

    .line 131
    invoke-virtual {p1, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 146
    new-instance p4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda3;

    invoke-direct {p3, p5, v0}, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda3;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    const p4, 0x104000a

    .line 149
    invoke-virtual {p1, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda4;

    invoke-direct {p3, p5}, Lcom/android/js/webview/AndroidJSActivity$2$$ExternalSyntheticLambda4;-><init>(Landroid/webkit/JsPromptResult;)V

    const/high16 p4, 0x1040000

    .line 151
    invoke-virtual {p1, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method
