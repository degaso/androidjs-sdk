.class public abstract Landroid/support/constraint/VirtualLayout;
.super Landroid/support/constraint/ConstraintHelper;
.source "VirtualLayout.java"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 5

    .line 48
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 54
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 55
    iput-boolean v4, p0, Landroid/support/constraint/VirtualLayout;->mApplyVisibilityOnAttach:Z

    goto :goto_1

    .line 56
    :cond_0
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v2, v3, :cond_1

    .line 57
    iput-boolean v4, p0, Landroid/support/constraint/VirtualLayout;->mApplyElevationOnAttach:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 8

    .line 73
    invoke-super {p0}, Landroid/support/constraint/ConstraintHelper;->onAttachedToWindow()V

    .line 74
    iget-boolean v0, p0, Landroid/support/constraint/VirtualLayout;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/constraint/VirtualLayout;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_4

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 76
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_4

    .line 77
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 78
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getVisibility()I

    move-result v1

    .line 80
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 81
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/support/constraint/VirtualLayout;)F

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    .line 83
    :goto_1
    iget v6, p0, Landroid/support/constraint/VirtualLayout;->mCount:I

    if-ge v5, v6, :cond_4

    .line 84
    iget-object v6, p0, Landroid/support/constraint/VirtualLayout;->mIds:[I

    aget v6, v6, v5

    .line 85
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 87
    iget-boolean v7, p0, Landroid/support/constraint/VirtualLayout;->mApplyVisibilityOnAttach:Z

    if-eqz v7, :cond_2

    .line 88
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_2
    iget-boolean v7, p0, Landroid/support/constraint/VirtualLayout;->mApplyElevationOnAttach:Z

    if-eqz v7, :cond_3

    cmpl-float v7, v2, v4

    if-lez v7, :cond_3

    .line 91
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_3

    .line 92
    invoke-static {v6}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)F

    move-result v7

    add-float/2addr v7, v2

    invoke-static {v6, v7}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;F)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V
    .locals 0

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setElevation(F)V

    .line 116
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->applyLayoutFeatures()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 107
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->applyLayoutFeatures()V

    return-void
.end method
