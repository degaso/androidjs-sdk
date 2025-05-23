.class Landroid/support/v4/media/MediaBrowserServiceCompatApi26;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MBSCompatApi26"

.field static sResultFlags:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    :try_start_0
    invoke-static {}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m$2()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi26;->sResultFlags:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    const-string v1, "MBSCompatApi26"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 1

    .line 49
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)V

    return-object v0
.end method

.method public static getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 57
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
