.class public Lcom/parrot/freeflight/piloting/PilotingActivity;
.super Lcom/parrot/freeflight/piloting/FullScreenActivity;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/PilotingActivity$LaunchMode;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "product"

.field public static final KEY_EXTRA_REMOTE_CTRL_PRODUCT:Ljava/lang/String; = "remote_ctrl_product"

.field public static final KEY_LAUNCH_MODE:Ljava/lang/String; = "launch_mode"

.field public static final LAUNCH_FLIGHTPLAN:I = 0x3

.field public static final LAUNCH_FOLLOW_ME:I = 0x2

.field public static final LAUNCH_FPV:I = 0x1

.field public static final LAUNCH_PILOTING:I = 0x0

.field private static final REQUEST_LOCATION:I = 0xc7


# instance fields
.field private mController:Lcom/parrot/freeflight/piloting/model/PilotingController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFollowMeLockListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnHudAccessDeniedListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

.field private final mOnOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

.field private mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;-><init>()V

    .line 328
    new-instance v0, Lcom/parrot/freeflight/piloting/PilotingActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$1;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    .line 336
    new-instance v0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$2;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;

    .line 345
    new-instance v0, Lcom/parrot/freeflight/piloting/PilotingActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$3;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnHudAccessDeniedListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;

    .line 353
    new-instance v0, Lcom/parrot/freeflight/piloting/PilotingActivity$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$4;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mFollowMeLockListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    .line 380
    new-instance v0, Lcom/parrot/freeflight/piloting/PilotingActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$5;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    return-void
.end method

.method private static getStartingIntent(Landroid/content/Context;IIZI)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "productValue"    # I
    .param p2, "remoteValue"    # I
    .param p3, "checkPendingIntent"    # Z
    .param p4, "launchMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 312
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->getPendingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v0, :cond_3

    .line 314
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "launch_mode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string/jumbo v1, "product"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    if-ltz p2, :cond_0

    .line 318
    const-string/jumbo v1, "remote_ctrl_product"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    :cond_0
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    :cond_1
    :goto_1
    return-object v0

    .line 312
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x3

    if-eq p4, v1, :cond_4

    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 323
    :cond_4
    const-string v1, "launch_mode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteCtrlProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteCtrlProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "checkPendingIntent"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZI)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteCtrlProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "checkPendingIntent"    # Z
    .param p4, "launchMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    .line 301
    .local v0, "productId":I
    if-eqz p2, :cond_0

    .line 302
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    .line 307
    .local v1, "remoteId":I
    :goto_0
    invoke-static {p0, v0, v1, p3, p4}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;IIZI)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 304
    .end local v1    # "remoteId":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "remoteId":I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 393
    const-string v0, "FF4.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    :cond_0
    const/16 v0, 0xc7

    if-ne p1, v0, :cond_1

    .line 399
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->setLocationSettingsReady(Z)V

    .line 401
    :cond_1
    return-void

    .line 399
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "FF4.Pilot"

    const-string/jumbo v1, "returning on Homepage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onBackPressed()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const-string v2, "FF4.Pilot.Life"

    const-string/jumbo v4, "onCreate Piloting"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super/range {p0 .. p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 77
    .local v21, "intent":Landroid/content/Intent;
    const/16 v23, 0x0

    .line 78
    .local v23, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const/16 v24, 0x0

    .line 79
    .local v24, "remoteCtrlProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-eqz p1, :cond_0

    .line 80
    const-string/jumbo v2, "product"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v23

    .line 81
    const-string/jumbo v2, "remote_ctrl_product"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v24

    .line 83
    :cond_0
    if-nez v23, :cond_1

    if-eqz v21, :cond_1

    const-string/jumbo v2, "product"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string/jumbo v2, "product"

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 85
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    .line 84
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v23

    .line 87
    :cond_1
    if-nez v24, :cond_2

    if-eqz v21, :cond_2

    const-string/jumbo v2, "remote_ctrl_product"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string/jumbo v2, "remote_ctrl_product"

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 89
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    .line 88
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v24

    .line 91
    :cond_2
    if-nez v23, :cond_3

    .line 92
    sget-object v23, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 94
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/PilotingActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 95
    if-eqz v24, :cond_4

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v0, v24

    if-eq v0, v2, :cond_4

    .line 96
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 99
    :cond_4
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v19

    .line 100
    .local v19, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v22

    .line 101
    .local v22, "modelStore":Lcom/parrot/freeflight/core/model/ModelStore;
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v18

    .line 103
    .local v18, "autoLaunchManager":Lcom/parrot/freeflight/core/AutoLaunchManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v2, v4, :cond_7

    :cond_5
    const/16 v20, 0x1

    .line 109
    .local v20, "gyroscopeSensitive":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;->getOrientation(Landroid/content/Context;Z)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/PilotingActivity;->setRequestedOrientation(I)V

    .line 110
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 111
    if-nez p1, :cond_6

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/16 v4, 0xc7

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkGoogleLocationSettings(Landroid/app/Activity;I)V

    .line 116
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 117
    .local v3, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    if-nez v3, :cond_8

    .line 118
    const-string v2, "FF4.Pilot"

    const-string v4, "Cannot start activity: null drone model not supported"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->finish()V

    .line 142
    :goto_1
    return-void

    .line 103
    .end local v3    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    .end local v20    # "gyroscopeSensitive":Z
    :cond_7
    const/16 v20, 0x0

    goto :goto_0

    .line 122
    .restart local v3    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    .restart local v20    # "gyroscopeSensitive":Z
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    .line 121
    invoke-static {v3, v2, v4}, Lcom/parrot/freeflight/piloting/PilotingBuilder;->buildPilotingController(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)Lcom/parrot/freeflight/piloting/model/PilotingController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    .line 123
    invoke-static {v3}, Lcom/parrot/freeflight/piloting/PilotingBuilder;->getLayoutResId(Lcom/parrot/freeflight/core/model/DroneModel;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/PilotingActivity;->setContentView(I)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 125
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v8

    .line 126
    .local v8, "gamePadManager":Lcom/parrot/freeflight/gamepad/GamePadManager;
    new-instance v6, Lcom/parrot/freeflight/util/PermissionChecker;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    .line 128
    .local v6, "permissionChecker":Lcom/parrot/freeflight/util/PermissionChecker;
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/CoreManager;->getFollowMeManager()Lcom/parrot/freeflight/core/FollowMeManager;

    move-result-object v17

    .line 130
    .local v17, "followMeManager":Lcom/parrot/freeflight/core/FollowMeManager;
    const/16 v16, 0x0

    .line 131
    .local v16, "launchMode":I
    if-nez p1, :cond_9

    if-eqz v21, :cond_9

    .line 133
    const-string v2, "launch_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 136
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/model/PilotingController;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 138
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/CoreManager;->getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mOnHudAccessDeniedListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mFollowMeLockListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    .line 140
    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/core/AutoLaunchManager;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    .line 136
    invoke-static/range {v2 .. v17}, Lcom/parrot/freeflight/piloting/PilotingBuilder;->buildUIController(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;ILcom/parrot/freeflight/core/FollowMeManager;)Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "FF4.Pilot.Life"

    const-string/jumbo v1, "onDestroy Piloting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController;->destroy()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->destroy()V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 217
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onDestroy()V

    .line 218
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "eventConsumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 284
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 9
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "eventConsumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 262
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "eventConsumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 253
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onLowMemory()V

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->lowMemory()V

    .line 226
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController;->pause()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->pause()V

    .line 177
    :cond_1
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onPause()V

    .line 178
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 245
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->resume()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController;->resume()V

    .line 167
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    :cond_0
    const-string/jumbo v0, "product"

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string/jumbo v1, "remote_ctrl_product"

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mRemoteCtrlProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 188
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    .line 187
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-void

    .line 188
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "FF4.Pilot.Life"

    const-string/jumbo v1, "onStart Piloting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onStart()V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController;->start()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->start()V

    .line 156
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "FF4.Pilot.Life"

    const-string/jumbo v1, "onStop Piloting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mController:Lcom/parrot/freeflight/piloting/model/PilotingController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController;->stop()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->stop()V

    .line 202
    :cond_1
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onStop()V

    .line 203
    return-void
.end method

.method public onThermalButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 405
    const-string v0, "FF4.Pilot"

    const-string v1, "Thermal button clicked but thermal is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
