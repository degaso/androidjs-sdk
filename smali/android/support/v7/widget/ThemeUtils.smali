.class Landroid/support/v7/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final ACTIVATED_STATE_SET:[I

.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    const v0, -0x101009e

    .line 30
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    const v0, 0x101009c

    .line 31
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    const v0, 0x10102fe

    .line 32
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    const v0, 0x10100a7

    .line 33
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    const v0, 0x10100a0

    .line 34
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    const v0, 0x10100a1

    .line 35
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    const v0, -0x10100a7

    const v1, -0x101009c

    .line 36
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    .line 45
    new-array v1, v0, [[I

    .line 46
    new-array v0, v0, [I

    .line 50
    sget-object v2, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 51
    aput p1, v0, v3

    .line 55
    sget-object p1, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 56
    aput p0, v0, v2

    .line 59
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 4

    .line 83
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object p0, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 90
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 93
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 95
    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 2

    .line 63
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 64
    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p0

    .line 66
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw p1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 0

    .line 109
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    .line 110
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    .line 111
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 73
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 74
    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p0

    .line 76
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw p1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .line 100
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
