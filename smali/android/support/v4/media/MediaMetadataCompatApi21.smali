.class Landroid/support/v4/media/MediaMetadataCompatApi21;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadata;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getLong(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 0

    .line 39
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRating(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadata;Ljava/lang/String;)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static getText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadata;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static keySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/MediaMetadataCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadata;Landroid/os/Parcel;I)V

    return-void
.end method
