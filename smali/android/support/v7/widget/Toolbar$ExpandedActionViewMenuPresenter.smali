.class Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 2309
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 2407
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz p1, :cond_0

    .line 2408
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2411
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2412
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2413
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2415
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2416
    iput-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2417
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x0

    .line 2418
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 2370
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    .line 2371
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2372
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_1

    .line 2373
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2374
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2376
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2378
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2379
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2380
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2381
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_3

    .line 2382
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2383
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2385
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p1

    .line 2386
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v0, 0x2

    .line 2387
    iput v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2388
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2389
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2392
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2393
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x1

    .line 2394
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2396
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p2, p2, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz p2, :cond_4

    .line 2397
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p2, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {p2}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_4
    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    .line 2315
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2316
    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 2318
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    .line 2329
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    .line 2332
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 2333
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2335
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2336
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2345
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    :cond_2
    :goto_1
    return-void
.end method
