.class Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    .line 67
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    return-object v0
.end method

.method public static setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 84
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription$Builder;Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static setIconBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 88
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription$Builder;Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static setIconUri(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .line 92
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static setMediaId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 80
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 76
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    return-void
.end method
