.class Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationZset"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .locals 6

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result p2

    invoke-static {p1, p2}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;F)V

    .line 311
    :cond_0
    iget-boolean p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;->mContinue:Z

    return p1
.end method
