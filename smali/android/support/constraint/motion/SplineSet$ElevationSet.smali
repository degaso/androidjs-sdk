.class Landroid/support/constraint/motion/SplineSet$ElevationSet;
.super Landroid/support/constraint/motion/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .locals 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/SplineSet$ElevationSet;->get(F)F

    move-result p2

    invoke-static {p1, p2}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
