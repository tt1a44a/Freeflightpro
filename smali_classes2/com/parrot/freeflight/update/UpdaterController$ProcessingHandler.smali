.class Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;
.super Landroid/os/Handler;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessingHandler"
.end annotation


# static fields
.field private static final DRONE_RESET_DELAY_DEFAULT_IN_SECOND:I = 0x5

.field private static final INSTALL_DELAY_DEFAULT_IN_SECOND:I = 0x1e


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/update/UpdaterController;",
            ">;"
        }
    .end annotation
.end field

.field private mEndEvent:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field private mProductReset:Z

.field private mSecondCountDown:I

.field private mStartingCountDown:I


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 1
    .param p1, "controller"    # Lcom/parrot/freeflight/update/UpdaterController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 650
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 651
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    .line 652
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p2, "x1"    # Lcom/parrot/freeflight/update/UpdaterController$1;

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 2

    .prologue
    .line 678
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mStartingCountDown:I

    if-nez v0, :cond_0

    .line 679
    const/high16 v0, 0x42c80000    # 100.0f

    .line 681
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mSecondCountDown:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mStartingCountDown:I

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 656
    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mSecondCountDown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mSecondCountDown:I

    .line 657
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/UpdaterController;

    .line 658
    .local v0, "controller":Lcom/parrot/freeflight/update/UpdaterController;
    if-eqz v0, :cond_0

    .line 659
    iget-boolean v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mProductReset:Z

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$1100(Lcom/parrot/freeflight/update/UpdaterController;Z)V

    .line 661
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mSecondCountDown:I

    if-lez v1, :cond_2

    .line 662
    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    if-eqz v0, :cond_1

    .line 664
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mEndEvent:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    goto :goto_0
.end method

.method public start(IZLcom/parrot/freeflight/update/UpdaterController$Event;)V
    .locals 1
    .param p1, "startingCountDown"    # I
    .param p2, "productReset"    # Z
    .param p3, "endEvent"    # Lcom/parrot/freeflight/update/UpdaterController$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 670
    iput p1, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mStartingCountDown:I

    .line 671
    iput-boolean p2, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mProductReset:Z

    .line 672
    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mEndEvent:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 673
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mStartingCountDown:I

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->mSecondCountDown:I

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->sendEmptyMessage(I)Z

    .line 675
    return-void
.end method
