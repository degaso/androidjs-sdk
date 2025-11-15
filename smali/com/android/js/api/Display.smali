.class public Lcom/android/js/api/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/js/api/Display;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/js/api/Display;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "-1"

    return-object v0
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, -0x1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/js/api/Display;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
