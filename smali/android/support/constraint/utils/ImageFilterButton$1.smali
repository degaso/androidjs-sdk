.class Landroid/support/constraint/utils/ImageFilterButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/utils/ImageFilterButton;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/utils/ImageFilterButton;


# direct methods
.method constructor <init>(Landroid/support/constraint/utils/ImageFilterButton;)V
    .locals 0

    .line 278
    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton$1;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 281
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton$1;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-virtual {p1}, Landroid/support/constraint/utils/ImageFilterButton;->getWidth()I

    move-result v3

    .line 282
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton$1;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-virtual {p1}, Landroid/support/constraint/utils/ImageFilterButton;->getHeight()I

    move-result v4

    .line 283
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton$1;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-static {v0}, Landroid/support/constraint/utils/ImageFilterButton;->access$000(Landroid/support/constraint/utils/ImageFilterButton;)F

    move-result v0

    mul-float p1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v5, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 284
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;IIIIF)V

    return-void
.end method
