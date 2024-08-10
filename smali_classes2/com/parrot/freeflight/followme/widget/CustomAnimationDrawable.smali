.class public Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "CustomAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;
    }
.end annotation


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mListener:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTimeLimit:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 3
    .param p1, "aniDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 11
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mTimeLimit:I

    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mAnimationHandler:Landroid/os/Handler;

    .line 25
    new-instance v1, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$1;-><init>(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mRunnable:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;)Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mListener:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;

    return-object v0
.end method


# virtual methods
.method public getTotalDuration()I
    .locals 3

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "iDuration":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return v1
.end method

.method public setAnimationListener(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mListener:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;

    .line 80
    return-void
.end method

.method public setTimeLimit(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mTimeLimit:I

    .line 88
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 41
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 44
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->getTotalDuration()I

    move-result v0

    .line 46
    .local v0, "animDuration":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->isOneShot()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mTimeLimit:I

    if-gez v2, :cond_1

    .line 47
    move v1, v0

    .line 52
    .local v1, "duration":I
    :goto_0
    if-lez v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    :cond_0
    return-void

    .line 49
    .end local v1    # "duration":I
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mTimeLimit:I

    .restart local v1    # "duration":I
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
