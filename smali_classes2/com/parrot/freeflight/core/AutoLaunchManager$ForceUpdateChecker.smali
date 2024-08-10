.class Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
.super Lcom/parrot/freeflight/core/AutoLaunchChecker;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceUpdateChecker"
.end annotation


# instance fields
.field private mDroneNeedsUpdate:Z

.field private mGamePadNeedsUpdate:Z

.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/AutoLaunchManager$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->refreshCondition()V

    return-void
.end method

.method static synthetic access$2602(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mGamePadNeedsUpdate:Z

    return p1
.end method

.method private refreshCondition()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 462
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mGamePadNeedsUpdate:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 464
    .local v0, "condition":Z
    :goto_0
    invoke-super {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setCondition(Z)V

    .line 466
    if-eqz v0, :cond_2

    .line 467
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2800(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->lockGamePadMode(I)V

    .line 471
    :goto_1
    return-void

    .line 462
    .end local v0    # "condition":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    .restart local v0    # "condition":Z
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2800(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unlockGamePadMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    .line 485
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mGamePadNeedsUpdate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLaunchType(Landroid/app/Activity;)I
    .locals 1
    .param p1, "currentActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 494
    instance-of v0, p1, Lcom/parrot/freeflight/start/CountryChoiceActivity;

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 500
    :goto_0
    return v0

    .line 496
    :cond_0
    instance-of v0, p1, Lcom/parrot/freeflight/update/ForceUpdateActivity;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/parrot/freeflight/update/UpdaterActivity;

    if-eqz v0, :cond_2

    .line 498
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 500
    :cond_2
    invoke-super {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchType(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->reset()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mGamePadNeedsUpdate:Z

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    .line 477
    return-void
.end method
