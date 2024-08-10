.class public Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GamePadInfosActivity.java"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mBatteryTextView:Landroid/widget/TextView;

.field private mCalibrationButton:Landroid/widget/Button;

.field private mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

.field private final mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

.field private mDropDownButton:Landroid/widget/ImageButton;

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

.field private mGamePadImageView:Landroid/widget/ImageView;

.field private final mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

.field private mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

.field private mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private mHardwareTextView:Landroid/widget/TextView;

.field private mMappingButton:Landroid/widget/Button;

.field private mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

.field private mModelTextView:Landroid/widget/TextView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mNoControllerLayout:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteCtrlConnectorState:I

.field private mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mSerialNumberTextView:Landroid/widget/TextView;

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private mSoftwareTextView:Landroid/widget/TextView;

.field private mSoftwareUpdateTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 473
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 487
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 499
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$10;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$10;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 508
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$11;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$11;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 525
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$12;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$12;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 533
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->switchVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->updateNoControllerVisibility(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mRemoteCtrlConnectorState:I

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mRemoteCtrlConnectorState:I

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/user/UserRemoteCtrl;ILcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->updateView(Lcom/parrot/freeflight/user/UserRemoteCtrl;ILcom/parrot/freeflight/gamepad/GamePad;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method private displayGamePadInfo(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 14
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 446
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->hasBatteryLevel()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 378
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v0

    .line 379
    .local v0, "batteryLevel":I
    if-ltz v0, :cond_4

    .line 380
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "%d %%"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const/16 v8, 0x46

    if-lt v0, v8, :cond_2

    .line 382
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    const v9, 0x7f0500a3

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    :goto_1
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    .end local v0    # "batteryLevel":I
    :goto_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getName()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mModelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSerialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mHardwareTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getHardware()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v4, 0x0

    .line 413
    .local v4, "needUpdate":Z
    const/4 v3, 0x0

    .line 414
    .local v3, "needCalibration":Z
    const/4 v5, 0x0

    .line 415
    .local v5, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    instance-of v8, p1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    if-eqz v8, :cond_6

    move-object v8, p1

    .line 416
    check-cast v8, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    .line 417
    .local v1, "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v8

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromServerVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v4

    .line 418
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->needCalibration()Z

    move-result v3

    .line 419
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    .line 428
    .end local v1    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_1
    :goto_3
    if-eqz v4, :cond_7

    .line 429
    invoke-static {p0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;

    move-result-object v6

    .line 430
    .local v6, "serverFirmwareVersions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 432
    .local v7, "serverVersion":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareUpdateTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    .end local v6    # "serverFirmwareVersions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    .end local v7    # "serverVersion":Ljava/lang/String;
    :goto_4
    if-eqz v3, :cond_8

    .line 440
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    const v9, 0x7f0700d6

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    const v9, 0x7f050036

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 383
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "needCalibration":Z
    .end local v4    # "needUpdate":Z
    .end local v5    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .restart local v0    # "batteryLevel":I
    :cond_2
    const/16 v8, 0xf

    if-gt v0, v8, :cond_3

    .line 384
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    const v9, 0x7f050103

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 386
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    const v9, 0x7f050138

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 389
    :cond_4
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1100cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    const v9, 0x7f050138

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 394
    .end local v0    # "batteryLevel":I
    :cond_5
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 420
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "needCalibration":Z
    .restart local v4    # "needUpdate":Z
    .restart local v5    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_6
    instance-of v8, p1, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    if-eqz v8, :cond_1

    move-object v8, p1

    .line 421
    check-cast v8, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    .line 422
    .restart local v1    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v8

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromServerVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v4

    .line 423
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->needCalibration()Z

    move-result v3

    .line 424
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    goto/16 :goto_3

    .line 435
    .end local v1    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_7
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareUpdateTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 443
    :cond_8
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    const v9, 0x7f0700d5

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    const v9, 0x7f050138

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private fixPreLollipopTheme()V
    .locals 2

    .prologue
    .line 462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_0
    return-void
.end method

.method private getConnectionTypeRes()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "drawableRes":I
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 364
    const v0, 0x7f0703c4

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 347
    :pswitch_0
    const v0, 0x7f0703c7

    .line 348
    goto :goto_0

    .line 351
    :pswitch_1
    const v0, 0x7f0703c6

    .line 352
    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getConnectivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 355
    const v0, 0x7f0703c7

    goto :goto_0

    .line 357
    :cond_1
    const v0, 0x7f0703c6

    .line 359
    goto :goto_0

    .line 361
    :pswitch_3
    const v0, 0x7f0703c5

    .line 362
    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private switchVisibility()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->switchVisibility()V

    .line 450
    return-void
.end method

.method private updateLayout(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 6
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    const v5, 0x7f07040b

    const v1, 0x7f07040a

    const v4, 0x7f070269

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->updateNoControllerVisibility(Ljava/util/List;)V

    .line 339
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 309
    :goto_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mMappingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    :goto_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 338
    :goto_3
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->updateNoControllerVisibility(Ljava/util/List;)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    const v1, 0x7f070409

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    const v1, 0x7f07040c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 289
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 293
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 297
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 301
    :pswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 305
    :pswitch_7
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    const v1, 0x7f070408

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mMappingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 319
    :pswitch_8
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDropDownButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->getConnectionTypeRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 324
    :pswitch_9
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f110168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f050138

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDropDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 331
    :pswitch_a
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f110511

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f050103

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDropDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 316
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private updateNoControllerVisibility(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 454
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mNoControllerLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mNoControllerLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateView(Lcom/parrot/freeflight/user/UserRemoteCtrl;ILcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p1, "userRemoteCtrl"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "state"    # I
    .param p3, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    invoke-direct {p0, p3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->updateLayout(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 272
    invoke-direct {p0, p3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->displayGamePadInfo(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 273
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->setContentView(I)V

    .line 118
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 119
    const v0, 0x7f0a018a

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mNameTextView:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0a04be

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0a037b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 122
    const v0, 0x7f0a051e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    .line 123
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDropDownButton:Landroid/widget/ImageButton;

    .line 124
    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadImageView:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0a017f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mModelTextView:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a018c

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSerialNumberTextView:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0a0183

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mHardwareTextView:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareTextView:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0a018e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareUpdateTextView:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mMappingButton:Landroid/widget/Button;

    .line 132
    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    .line 133
    const v0, 0x7f0a028f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mNoControllerLayout:Landroid/view/View;

    .line 135
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 136
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDropDownButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$2;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setOnVisibilityChangeListener(Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$4;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setOnDeviceClickListener(Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareUpdateTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$5;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mMappingButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$6;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;-><init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->getGamePadListListener()Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 209
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mNameTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mModelTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSerialNumberTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mHardwareTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSoftwareUpdateTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mMappingButton:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mCalibrationButton:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 221
    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 222
    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 223
    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 224
    const v0, 0x7f0a018d

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 226
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->fixPreLollipopTheme()V

    .line 227
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->getGamePadListListener()Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 259
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 235
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 243
    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 247
    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 252
    return-void
.end method
