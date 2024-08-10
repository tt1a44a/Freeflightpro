.class Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;
.super Lcom/parrot/freeflight/core/AutoLaunchChecker;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FpvModeChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/AutoLaunchManager$1;

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->refreshCondition()V

    return-void
.end method

.method private refreshCondition()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 507
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->isFpvAutoLaunchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 508
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 509
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserDrone;->allowFpv()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 510
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$600(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 511
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 512
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->allowFpv()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 513
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1100(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 514
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 515
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isProductSerialFull()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 516
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->connectionProtocolEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 517
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2900(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->isConditionMet()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 518
    .local v0, "cond":Z
    :goto_0
    invoke-super {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setCondition(Z)V

    .line 519
    return-void

    .line 517
    .end local v0    # "cond":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 526
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 527
    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/util/Screen;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 526
    :goto_0
    invoke-static {v3, v0, v4, v2, v1}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 529
    .end local v0    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_1
    return-object v1

    .line 527
    .restart local v0    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLaunchType(Landroid/app/Activity;)I
    .locals 1
    .param p1, "currentActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 535
    instance-of v0, p1, Lcom/parrot/freeflight/start/CountryChoiceActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/update/ForceUpdateActivity;

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    .line 537
    :cond_1
    instance-of v0, p1, Lcom/parrot/freeflight/piloting/PilotingActivity;

    if-eqz v0, :cond_2

    .line 538
    const/4 v0, 0x2

    goto :goto_0

    .line 540
    :cond_2
    invoke-super {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchType(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method
