.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;
.super Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi28"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 3906
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3910
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCurrentControllerInfo()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 3920
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaSession;

    move-result-object v0

    .line 3921
    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 3922
    new-instance v1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v1
.end method

.method public setCurrentControllerInfo(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0

    return-void
.end method
