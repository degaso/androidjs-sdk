.class Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 389
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .locals 9

    .line 394
    const-string v0, "unable to setProgress"

    const-string v1, "SplineSet"

    instance-of v2, p1, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v2, :cond_0

    .line 395
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/motion/MotionLayout;

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_1

    .line 397
    :cond_0
    iget-boolean v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    .line 402
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setProgress"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    iput-boolean v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    move-object v3, p0

    move v4, p2

    move-wide v5, p3

    move-object v7, p1

    move-object v8, p5

    .line 408
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 412
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 410
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :cond_2
    :goto_1
    iget-boolean p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mContinue:Z

    return p1
.end method
