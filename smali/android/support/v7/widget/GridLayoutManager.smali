.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 85
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 73
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 74
    iget p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .locals 3

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    move p5, p3

    const/4 p3, 0x0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    const/4 p5, -0x1

    const/4 v0, -0x1

    :goto_0
    if-eq p3, p5, :cond_1

    .line 782
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, p3

    .line 783
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 784
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    iput v1, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 785
    iput p4, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 786
    iget v1, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr p4, v1

    add-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 193
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 321
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    .line 323
    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    .line 325
    aput v1, p0, v1

    .line 326
    div-int v2, p2, p1

    .line 327
    rem-int/2addr p2, p1

    const/4 v3, 0x0

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 338
    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 389
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    .line 392
    iget p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_3

    .line 393
    iget p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 394
    iget p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    .line 398
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    .line 399
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 402
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    .line 410
    :cond_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 365
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0

    .line 451
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 452
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    .line 454
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 463
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1

    .line 467
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 468
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    .line 470
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 474
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 484
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1

    .line 488
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 489
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    .line 491
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 495
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 501
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 505
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private guessMeasurement(FI)V
    .locals 1

    .line 746
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 748
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 713
    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 714
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 716
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 718
    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    .line 721
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 722
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 724
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 727
    :cond_0
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 729
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 732
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_0

    .line 756
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_0

    .line 758
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    .line 761
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 281
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 252
    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return p1
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 511
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 513
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 514
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 515
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 516
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 518
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    .line 417
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 421
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    .line 425
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 426
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    .line 428
    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 432
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 436
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 437
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 227
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 238
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 243
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p1

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 119
    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p1

    .line 121
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method getSpaceForSpanRange(II)I
    .locals 3

    .line 344
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    .line 348
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public getSpanCount()I
    .locals 1

    .line 797
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 526
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v9

    const/4 v10, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v12, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 528
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v0, v0, v3

    move v14, v0

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-eqz v13, :cond_2

    .line 533
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 535
    :cond_2
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v0, v10, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 539
    :goto_2
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-nez v15, :cond_4

    .line 541
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    .line 542
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 545
    :goto_3
    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v5, v3, :cond_8

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    .line 546
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 547
    invoke-direct {v6, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v12

    .line 548
    iget v11, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-gt v12, v11, :cond_7

    sub-int/2addr v0, v12

    if-gez v0, :cond_5

    goto :goto_4

    .line 557
    :cond_5
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr v4, v12

    .line 562
    iget-object v11, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v11, v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_3

    .line 549
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v5, :cond_9

    .line 567
    iput-boolean v10, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v11, v5

    move v5, v15

    .line 575
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v11, :cond_f

    .line 577
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v3, v1

    .line 578
    iget-object v4, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_b

    if-eqz v15, :cond_a

    .line 580
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 582
    invoke-virtual {v6, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    if-eqz v15, :cond_c

    .line 586
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    .line 588
    :cond_c
    invoke-virtual {v6, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 591
    :goto_6
    iget-object v5, v6, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 593
    invoke-direct {v6, v3, v9, v4}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 594
    iget-object v4, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_d

    move v2, v4

    .line 598
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 599
    iget-object v5, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v3, v3, v5

    iget v4, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v4, v3, v0

    if-lez v4, :cond_e

    move v0, v3

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    if-eqz v13, :cond_11

    .line 607
    invoke-direct {v6, v0, v14}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v11, :cond_11

    .line 611
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v0, v0, v4

    const/high16 v1, 0x40000000    # 2.0f

    .line 612
    invoke-direct {v6, v0, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 613
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    if-le v0, v2, :cond_10

    move v2, v0

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v11, :cond_14

    .line 623
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v0, v0, v4

    .line 624
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_13

    .line 625
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 626
    iget-object v3, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 627
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v9

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v9

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v9

    .line 629
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iget v3, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v9, v3

    iget v3, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v9, v3

    .line 631
    iget v3, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v12, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v3, v12}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v3

    .line 634
    iget v12, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v12, v10, :cond_12

    .line 635
    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13, v9, v1, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    sub-int v3, v2, v5

    .line 637
    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    sub-int v9, v2, v9

    .line 640
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 642
    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v13, v5, v1, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    move v1, v9

    .line 645
    :goto_9
    invoke-direct {v6, v0, v1, v3, v10}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_a

    :cond_13
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    const/4 v12, 0x0

    .line 649
    iput v2, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 652
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v10, :cond_16

    .line 653
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_15

    .line 654
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v0, v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v17, v4

    move v4, v0

    move/from16 v0, v17

    goto :goto_c

    .line 657
    :cond_15
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v0, v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_c

    .line 661
    :cond_16
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_17

    .line 662
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v0, v4, v2

    move v1, v0

    move v2, v4

    goto :goto_b

    .line 665
    :cond_17
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v0, v4, v2

    move v2, v0

    move v1, v4

    :goto_b
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v12, v11, :cond_1c

    .line 670
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v3, v12

    .line 671
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 672
    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v3, v10, :cond_19

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    iget v5, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v3, v5

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 675
    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    move v13, v0

    move v15, v1

    move v14, v2

    goto :goto_d

    .line 677
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 678
    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    move v13, v0

    move v14, v1

    move v15, v2

    :goto_d
    move/from16 v16, v4

    goto :goto_e

    .line 681
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 682
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    move/from16 v16, v0

    move v14, v1

    move v15, v2

    move v13, v3

    :goto_e
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    move/from16 v3, v16

    move v4, v15

    move v5, v13

    .line 686
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 694
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 695
    :cond_1a
    iput-boolean v10, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 697
    :cond_1b
    iget-boolean v0, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v12, v12, 0x1

    move v0, v13

    move v1, v14

    move v2, v15

    move/from16 v4, v16

    goto/16 :goto_c

    .line 699
    :cond_1c
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    .line 355
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 356
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 357
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 360
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 995
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 999
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1000
    iget v6, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1001
    iget v7, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v7, v5

    .line 1002
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    move/from16 v5, p2

    .line 1008
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1009
    :goto_0
    iget-boolean v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    const/4 v11, -0x1

    if-eq v5, v10, :cond_3

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v9

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_1

    .line 1018
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v10, v5

    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 1020
    :goto_1
    iget v13, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 1044
    :goto_2
    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v14

    move v11, v5

    const/4 v8, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object v5, v4

    :goto_3
    if-eq v11, v10, :cond_16

    .line 1046
    invoke-direct {v0, v1, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v9

    .line 1047
    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_b

    .line 1052
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v9, v14, :cond_8

    if-eqz v4, :cond_6

    goto/16 :goto_b

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 p1, v8

    move/from16 v19, v10

    :cond_7
    :goto_4
    move/from16 v10, v16

    move/from16 v5, v17

    goto/16 :goto_9

    .line 1063
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1064
    iget v2, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v18, v3

    .line 1065
    iget v3, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v19, v10

    iget v10, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v10

    .line 1066
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v7, :cond_9

    return-object v1

    .line 1071
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v4, :cond_b

    .line 1072
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-nez v10, :cond_c

    if-nez v5, :cond_c

    :cond_b
    :goto_5
    move-object/from16 v20, v5

    move/from16 p1, v8

    move/from16 v10, v16

    move/from16 v5, v17

    goto :goto_8

    .line 1075
    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1076
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v10, v20, v10

    .line 1078
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-eqz v20, :cond_f

    if-le v10, v8, :cond_d

    goto :goto_5

    :cond_d
    if-ne v10, v8, :cond_14

    if-le v2, v15, :cond_e

    const/4 v10, 0x1

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    :goto_6
    if-ne v13, v10, :cond_14

    goto :goto_5

    :cond_f
    if-nez v4, :cond_14

    move-object/from16 v20, v5

    move/from16 p1, v8

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1087
    invoke-virtual {v0, v1, v5, v8}, Landroid/support/v7/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v5, v17

    if-le v10, v5, :cond_10

    move/from16 v10, v16

    goto :goto_8

    :cond_10
    if-ne v10, v5, :cond_13

    move/from16 v10, v16

    if-le v2, v10, :cond_11

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    :goto_7
    if-ne v13, v8, :cond_15

    .line 1099
    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1101
    iget v4, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1102
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1103
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v8, v3, v2

    move v15, v4

    move/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v5, v20

    move-object v4, v1

    goto :goto_a

    .line 1106
    :cond_12
    iget v5, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1107
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1108
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v17, v3, v2

    move/from16 v8, p1

    move/from16 v16, v5

    move-object v5, v1

    goto :goto_a

    :cond_13
    move/from16 v10, v16

    goto :goto_9

    :cond_14
    move-object/from16 v20, v5

    move/from16 p1, v8

    goto/16 :goto_4

    :cond_15
    :goto_9
    move/from16 v8, p1

    move/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v5, v20

    :goto_a
    add-int/2addr v11, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v10, v19

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_16
    :goto_b
    move-object/from16 v20, v5

    if-eqz v4, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v4, v20

    :goto_c
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 148
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    .line 151
    :cond_0
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    .line 153
    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v1, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v4, 0x1

    move v1, p2

    move v3, p1

    .line 154
    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le p2, v1, :cond_3

    .line 162
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p2, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v2, 0x1

    move v1, p1

    .line 159
    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 201
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 206
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 222
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 211
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 217
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 168
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 175
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 373
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 381
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 292
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 295
    iget-object p3, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    .line 295
    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 300
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v0

    .line 300
    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 303
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    .line 810
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    .line 818
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 819
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 820
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    return-void

    .line 815
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 262
    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1117
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
