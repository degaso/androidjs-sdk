.class Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 966
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 967
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 994
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 999
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 972
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 973
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 979
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 980
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object p1

    iput-object p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 986
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 987
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 988
    invoke-static {v1, p1, p2}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object p1

    iput-object p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
