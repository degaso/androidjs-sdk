.class public Landroid/arch/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;,
        Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;,
        Landroid/arch/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "android.arch.lifecycle.ViewModelProvider.DefaultKey"


# instance fields
.field private final mFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Landroid/arch/lifecycle/ViewModelProvider;->mFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

    .line 79
    iput-object p1, p0, Landroid/arch/lifecycle/ViewModelProvider;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    return-void
.end method

.method public constructor <init>(Landroid/arch/lifecycle/ViewModelStoreOwner;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 66
    invoke-interface {p1}, Landroid/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/arch/lifecycle/ViewModelProvider;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/ViewModelProvider;->mFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v0, p2}, Landroid/arch/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p2

    .line 135
    iget-object v0, p0, Landroid/arch/lifecycle/ViewModelProvider;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1, p2}, Landroid/arch/lifecycle/ViewModelStore;->put(Ljava/lang/String;Landroid/arch/lifecycle/ViewModel;)V

    return-object p2
.end method
