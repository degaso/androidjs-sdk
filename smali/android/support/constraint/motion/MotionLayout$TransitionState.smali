.class final enum Landroid/support/constraint/motion/MotionLayout$TransitionState;
.super Ljava/lang/Enum;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/motion/MotionLayout$TransitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field public static final enum FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field public static final enum MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field public static final enum SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field public static final enum UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 953
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/motion/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 954
    new-instance v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;

    const-string v2, "SETUP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 955
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;

    const-string v3, "MOVING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 956
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$TransitionState;

    const-string v4, "FINISHED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 952
    filled-new-array {v0, v1, v2, v3}, [Landroid/support/constraint/motion/MotionLayout$TransitionState;

    move-result-object v0

    sput-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->$VALUES:[Landroid/support/constraint/motion/MotionLayout$TransitionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 952
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/motion/MotionLayout$TransitionState;
    .locals 1

    .line 952
    const-class v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/motion/MotionLayout$TransitionState;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/motion/MotionLayout$TransitionState;
    .locals 1

    .line 952
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->$VALUES:[Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0}, [Landroid/support/constraint/motion/MotionLayout$TransitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/motion/MotionLayout$TransitionState;

    return-object v0
.end method
