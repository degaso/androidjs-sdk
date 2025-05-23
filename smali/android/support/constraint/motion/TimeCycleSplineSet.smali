.class public abstract Landroid/support/constraint/motion/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final CURVE_OFFSET:I = 0x2

.field private static final CURVE_PERIOD:I = 0x1

.field private static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field private static VAL_2PI:F = 6.2831855f


# instance fields
.field private count:I

.field last_cycle:F

.field last_time:J

.field private mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/16 v1, 0xa

    .line 40
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    const/4 v2, 0x2

    .line 41
    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    .line 44
    new-array v1, v4, [F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    .line 49
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;J)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .locals 2

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :pswitch_0
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;-><init>()V

    goto :goto_1

    .line 147
    :pswitch_1
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;-><init>()V

    goto :goto_1

    .line 135
    :pswitch_2
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;-><init>()V

    goto :goto_1

    .line 138
    :pswitch_3
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;-><init>()V

    goto :goto_1

    .line 153
    :pswitch_4
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;-><init>()V

    goto :goto_1

    .line 150
    :pswitch_5
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;-><init>()V

    goto :goto_1

    .line 165
    :pswitch_6
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;-><init>()V

    goto :goto_1

    .line 162
    :pswitch_7
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;-><init>()V

    goto :goto_1

    .line 159
    :pswitch_8
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;-><init>()V

    goto :goto_1

    .line 156
    :pswitch_9
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;-><init>()V

    goto :goto_1

    .line 144
    :pswitch_a
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;-><init>()V

    goto :goto_1

    .line 141
    :pswitch_b
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;-><init>()V

    .line 170
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setStartTime(J)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected calcWave(F)F
    .locals 3

    .line 100
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    .line 103
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v2, p1

    mul-float p1, p1, p1

    :goto_0
    sub-float/2addr v2, p1

    return v2

    .line 113
    :pswitch_1
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    goto :goto_0

    :pswitch_3
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    sub-float/2addr p1, v2

    return p1

    .line 107
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    .line 105
    :pswitch_5
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 70
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(D[F)V

    .line 71
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-nez v11, :cond_0

    .line 73
    iput-boolean v9, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    .line 74
    aget v1, v5, v8

    return v1

    .line 76
    :cond_0
    iget v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v9}, Landroid/support/constraint/motion/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v5

    iput v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 78
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    iput v10, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 82
    :cond_1
    iget-wide v11, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    sub-long v11, v1, v11

    .line 83
    iget v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    float-to-double v13, v5

    long-to-double v11, v11

    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v11

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v13, v8

    double-to-float v8, v13

    iput v8, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 84
    iget-object v9, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v9, v5, v8}, Landroid/support/constraint/motion/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 85
    iput-wide v1, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    .line 86
    iget-object v1, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    aget v1, v1, v5

    .line 87
    iget v2, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/TimeCycleSplineSet;->calcWave(F)F

    move-result v2

    .line 88
    iget-object v3, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    cmpl-float v1, v1, v10

    if-nez v1, :cond_3

    cmpl-float v1, v7, v10

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 90
    :cond_3
    :goto_0
    iput-boolean v6, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    return v2
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    .line 180
    iget-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object p1, p1, v1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    .line 181
    aput p3, p1, p2

    const/4 p3, 0x2

    .line 182
    aput p5, p1, p3

    .line 183
    iget p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    .line 184
    iget p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
.end method

.method protected setStartTime(J)V
    .locals 0

    .line 175
    iput-wide p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .locals 11

    .line 188
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error no points added to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplineSet"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 195
    aget v5, v2, v0

    add-int/lit8 v6, v0, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 202
    :cond_3
    new-array v0, v1, [D

    const/4 v2, 0x2

    .line 203
    new-array v5, v2, [I

    const/4 v6, 0x3

    aput v6, v5, v3

    aput v1, v5, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 206
    :goto_1
    iget v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v5, v7, :cond_5

    if-lez v5, :cond_4

    .line 207
    iget-object v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v7, v5

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    if-ne v8, v7, :cond_4

    goto :goto_2

    .line 210
    :cond_4
    iget-object v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v7, v7, v5

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    aput-wide v7, v0, v6

    .line 211
    aget-object v7, v1, v6

    iget-object v8, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v8, v8, v5

    aget v9, v8, v4

    float-to-double v9, v9

    aput-wide v9, v7, v4

    .line 212
    aget v9, v8, v3

    float-to-double v9, v9

    aput-wide v9, v7, v3

    .line 213
    aget v8, v8, v2

    float-to-double v8, v8

    aput-wide v8, v7, v2

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 216
    :cond_5
    invoke-static {p1, v0, v1}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 55
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    :goto_0
    iget v3, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_0

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
