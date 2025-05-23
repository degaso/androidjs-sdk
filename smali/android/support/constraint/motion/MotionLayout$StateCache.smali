.class Landroid/support/constraint/motion/MotionLayout$StateCache;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCache"
.end annotation


# instance fields
.field final KeyEndState:Ljava/lang/String;

.field final KeyProgress:Ljava/lang/String;

.field final KeyStartState:Ljava/lang/String;

.field final KeyVelocity:Ljava/lang/String;

.field endState:I

.field mProgress:F

.field mVelocity:F

.field startState:I

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1343
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1344
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    const/4 p1, -0x1

    .line 1345
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1346
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1347
    const-string p1, "motion.progress"

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyProgress:Ljava/lang/String;

    .line 1348
    const-string p1, "motion.velocity"

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyVelocity:Ljava/lang/String;

    .line 1349
    const-string p1, "motion.StartState"

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyStartState:Ljava/lang/String;

    .line 1350
    const-string p1, "motion.EndState"

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyEndState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method apply()V
    .locals 4

    .line 1353
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    if-eq v2, v1, :cond_3

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1355
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    goto :goto_0

    .line 1356
    :cond_1
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    if-ne v2, v1, :cond_2

    .line 1357
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v0, v1, v1}, Landroid/support/constraint/motion/MotionLayout;->setState(III)V

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3, v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 1361
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1363
    :cond_3
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1364
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1367
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    return-void

    .line 1370
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/motion/MotionLayout;->setProgress(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1371
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1372
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1373
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1374
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    return-void
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 3

    .line 1378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1379
    const-string v1, "motion.progress"

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1380
    const-string v1, "motion.velocity"

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1381
    const-string v1, "motion.StartState"

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1382
    const-string v1, "motion.EndState"

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public recordState()V
    .locals 1

    .line 1410
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1411
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$100(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1412
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getVelocity()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1413
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    return-void
.end method

.method public setEndState(I)V
    .locals 0

    .line 1398
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1394
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    return-void
.end method

.method public setStartState(I)V
    .locals 0

    .line 1406
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    .line 1387
    const-string v0, "motion.progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1388
    const-string v0, "motion.velocity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1389
    const-string v0, "motion.StartState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1390
    const-string v0, "motion.EndState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    return-void
.end method

.method public setVelocity(F)V
    .locals 0

    .line 1402
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    return-void
.end method
