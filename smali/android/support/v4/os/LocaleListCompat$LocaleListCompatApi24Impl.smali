.class Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroid/support/v4/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatApi24Impl"
.end annotation


# instance fields
.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    check-cast p1, Landroid/support/v4/os/LocaleListCompat;

    invoke-virtual {p1}, Landroid/support/v4/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0, p1}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;[Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)Z

    move-result v0

    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .locals 1

    .line 109
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method

.method public size()I
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroid/support/v4/text/HtmlCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
