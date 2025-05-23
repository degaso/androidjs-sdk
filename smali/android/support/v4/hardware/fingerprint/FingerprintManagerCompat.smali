.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .locals 1

    .line 49
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 149
    :cond_0
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 151
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 152
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 153
    :cond_2
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method private static wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1

    .line 163
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$1;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 138
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p3}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    .line 111
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v2

    .line 114
    invoke-static {p4}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v5

    move v4, p2

    move-object v6, p5

    .line 110
    invoke-static/range {v1 .. v6}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 3

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isHardwareDetected()Z
    .locals 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
