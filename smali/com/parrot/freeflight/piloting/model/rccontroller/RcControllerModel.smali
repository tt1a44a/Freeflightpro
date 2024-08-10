.class public Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
.super Lcom/parrot/freeflight/core/model/Model;
.source "RcControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$ChannelType;,
        Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$CalibrationType;,
        Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;,
        Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$ChannelAction;,
        Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$ReceiverState;
    }
.end annotation


# static fields
.field public static final CALIBRATION_TYPE_MIN_MAX:I = 0x2

.field public static final CALIBRATION_TYPE_NEUTRAL:I = 0x1

.field public static final CALIBRATION_TYPE_NONE:I = 0x0

.field public static final CALIBRATION_TYPE_UNKNOWN:I = -0x1

.field public static final CHANNEL_ACTION_COUNT:I = 0xa

.field public static final CHANNEL_ACTION_EMERGENCY:I = 0x6

.field public static final CHANNEL_ACTION_GAZ:I = 0x4

.field public static final CHANNEL_ACTION_INVALID:I = 0x0

.field public static final CHANNEL_ACTION_PILOTING_MODE:I = 0x8

.field public static final CHANNEL_ACTION_PITCH:I = 0x2

.field public static final CHANNEL_ACTION_RETURN_HOME:I = 0x7

.field public static final CHANNEL_ACTION_ROLL:I = 0x1

.field public static final CHANNEL_ACTION_TAKEOFF_LAND:I = 0x5

.field public static final CHANNEL_ACTION_TAKE_CONTROL:I = 0x9

.field public static final CHANNEL_ACTION_UNKNOWN:I = -0x1

.field public static final CHANNEL_ACTION_YAW:I = 0x3

.field public static final CHANNEL_TYPE_BISTABLE_BUTTON:I = 0x4

.field public static final CHANNEL_TYPE_INVALID:I = 0x0

.field public static final CHANNEL_TYPE_MONOSTABLE_BUTTON:I = 0x3

.field public static final CHANNEL_TYPE_ROTARY_BUTTON:I = 0x6

.field public static final CHANNEL_TYPE_SIGNED_AXIS:I = 0x1

.field public static final CHANNEL_TYPE_TRISTATE_BUTTON:I = 0x5

.field public static final CHANNEL_TYPE_UNKNOWN:I = -0x1

.field public static final CHANNEL_TYPE_UNSIGNED_AXIS:I = 0x2

.field public static final RECEIVER_STATE_CONNECTED:I = 0x0

.field public static final RECEIVER_STATE_DISCONNECTED:I = 0x1

.field public static final RECEIVER_STATE_UNKNOWN:I = -0x1


# instance fields
.field private mCalibratedChannels:I

.field private mCalibratingChannelAction:I

.field private final mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelsMonitorEnabled:Z

.field private mCurrentCalibrationType:I

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNeutralCalibrated:Z

.field private mReceiverEnabled:Z

.field private mReceiverProtocol:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReceiverState:I

.field private mRequiredChannels:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 22
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/Model;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverProtocol:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelsMonitorEnabled:Z

    .line 107
    new-instance v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    .line 125
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCurrentCalibrationType:I

    .line 133
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratingChannelAction:I

    return-void
.end method

.method private getCalibrationType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;)I
    .locals 3
    .param p1, "calibrationTypeEnum"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    .prologue
    .line 409
    sget-object v1, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 421
    const/4 v0, -0x1

    .line 424
    .local v0, "calibrationType":I
    :goto_0
    return v0

    .line 411
    .end local v0    # "calibrationType":I
    :pswitch_0
    const/4 v0, 0x0

    .line 412
    .restart local v0    # "calibrationType":I
    goto :goto_0

    .line 414
    .end local v0    # "calibrationType":I
    :pswitch_1
    const/4 v0, 0x1

    .line 415
    .restart local v0    # "calibrationType":I
    goto :goto_0

    .line 417
    .end local v0    # "calibrationType":I
    :pswitch_2
    const/4 v0, 0x2

    .line 418
    .restart local v0    # "calibrationType":I
    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCalibrationTypeEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    .locals 1
    .param p1, "calibrationType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 430
    packed-switch p1, :pswitch_data_0

    .line 442
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    .line 445
    .local v0, "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    :goto_0
    return-object v0

    .line 432
    .end local v0    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;->NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    .line 433
    .restart local v0    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    goto :goto_0

    .line 435
    .end local v0    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;->NEUTRAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    .line 436
    .restart local v0    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    goto :goto_0

    .line 438
    .end local v0    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;->MIN_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    .line 439
    .restart local v0    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getChannelAction(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;)I
    .locals 3
    .param p1, "actionEnum"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .prologue
    .line 451
    sget-object v1, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_RC_CHANNEL_ACTION_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 484
    const/4 v0, -0x1

    .line 487
    .local v0, "action":I
    :goto_0
    return v0

    .line 453
    .end local v0    # "action":I
    :pswitch_0
    const/4 v0, 0x0

    .line 454
    .restart local v0    # "action":I
    goto :goto_0

    .line 456
    .end local v0    # "action":I
    :pswitch_1
    const/4 v0, 0x1

    .line 457
    .restart local v0    # "action":I
    goto :goto_0

    .line 459
    .end local v0    # "action":I
    :pswitch_2
    const/4 v0, 0x2

    .line 460
    .restart local v0    # "action":I
    goto :goto_0

    .line 462
    .end local v0    # "action":I
    :pswitch_3
    const/4 v0, 0x3

    .line 463
    .restart local v0    # "action":I
    goto :goto_0

    .line 465
    .end local v0    # "action":I
    :pswitch_4
    const/4 v0, 0x4

    .line 466
    .restart local v0    # "action":I
    goto :goto_0

    .line 468
    .end local v0    # "action":I
    :pswitch_5
    const/4 v0, 0x5

    .line 469
    .restart local v0    # "action":I
    goto :goto_0

    .line 471
    .end local v0    # "action":I
    :pswitch_6
    const/4 v0, 0x6

    .line 472
    .restart local v0    # "action":I
    goto :goto_0

    .line 474
    .end local v0    # "action":I
    :pswitch_7
    const/4 v0, 0x7

    .line 475
    .restart local v0    # "action":I
    goto :goto_0

    .line 477
    .end local v0    # "action":I
    :pswitch_8
    const/16 v0, 0x8

    .line 478
    .restart local v0    # "action":I
    goto :goto_0

    .line 480
    .end local v0    # "action":I
    :pswitch_9
    const/16 v0, 0x9

    .line 481
    .restart local v0    # "action":I
    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getChannelActionEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .locals 1
    .param p1, "action"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 493
    packed-switch p1, :pswitch_data_0

    .line 526
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 529
    .local v0, "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :goto_0
    return-object v0

    .line 495
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->INVALID:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 496
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 498
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 499
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 501
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 502
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 504
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 505
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 507
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 508
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 510
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_5
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 511
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 513
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_6
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 514
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 516
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_7
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->RETURN_HOME:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 517
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 519
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_8
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->PILOTING_MODE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 520
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 522
    .end local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :pswitch_9
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->TAKE_CONTROL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 523
    .restart local v0    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getChannelType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;)I
    .locals 3
    .param p0, "channelTypeEnum"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .prologue
    .line 535
    sget-object v1, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_RC_CHANNEL_TYPE_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 559
    const/4 v0, -0x1

    .line 562
    .local v0, "type":I
    :goto_0
    return v0

    .line 537
    .end local v0    # "type":I
    :pswitch_0
    const/4 v0, 0x0

    .line 538
    .restart local v0    # "type":I
    goto :goto_0

    .line 540
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x1

    .line 541
    .restart local v0    # "type":I
    goto :goto_0

    .line 543
    .end local v0    # "type":I
    :pswitch_2
    const/4 v0, 0x2

    .line 544
    .restart local v0    # "type":I
    goto :goto_0

    .line 546
    .end local v0    # "type":I
    :pswitch_3
    const/4 v0, 0x3

    .line 547
    .restart local v0    # "type":I
    goto :goto_0

    .line 549
    .end local v0    # "type":I
    :pswitch_4
    const/4 v0, 0x4

    .line 550
    .restart local v0    # "type":I
    goto :goto_0

    .line 552
    .end local v0    # "type":I
    :pswitch_5
    const/4 v0, 0x5

    .line 553
    .restart local v0    # "type":I
    goto :goto_0

    .line 555
    .end local v0    # "type":I
    :pswitch_6
    const/4 v0, 0x6

    .line 556
    .restart local v0    # "type":I
    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getChannelTypeEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    .locals 1
    .param p1, "channelType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 568
    packed-switch p1, :pswitch_data_0

    .line 592
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 595
    .local v0, "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :goto_0
    return-object v0

    .line 570
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->INVALID:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 571
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 573
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->SIGNED_AXIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 574
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 576
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->UNSIGNED_AXIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 577
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 579
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->MONOSTABLE_BUTTON:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 580
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 582
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->BISTABLE_BUTTON:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 583
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 585
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_5
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->TRISTATE_BUTTON:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 586
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 588
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :pswitch_6
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->ROTARY_BUTTON:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .line 589
    .restart local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateRequiredAndCalibratedChannels()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 357
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 358
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-virtual {v7, v2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 359
    .local v3, "info":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getAction()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelActionEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->getValue()I

    move-result v1

    .line 360
    .local v1, "channelValue":I
    iget v7, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mRequiredChannels:I

    shr-int/2addr v7, v1

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_0

    move v4, v5

    .line 361
    .local v4, "required":Z
    :goto_1
    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->setRequired(Z)V

    .line 362
    iget v7, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratedChannels:I

    shr-int/2addr v7, v1

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1

    move v0, v5

    .line 363
    .local v0, "calibrated":Z
    :goto_2
    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->setCalibrated(Z)V

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "calibrated":Z
    .end local v4    # "required":Z
    :cond_0
    move v4, v6

    .line 360
    goto :goto_1

    .restart local v4    # "required":Z
    :cond_1
    move v0, v6

    .line 362
    goto :goto_2

    .line 365
    .end local v1    # "channelValue":I
    .end local v3    # "info":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    .end local v4    # "required":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public abortCalibration()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedRcAbortCalibration()V

    .line 392
    :cond_0
    return-void
.end method

.method public enableReceiver(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedRcEnableReceiver(Z)V

    .line 404
    :cond_0
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getCalibratingChannelAction()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratingChannelAction:I

    return v0
.end method

.method public getChannelInfos()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    return-object v0
.end method

.method public getCurrentCalibrationType()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCurrentCalibrationType:I

    return v0
.end method

.method public getReceiverProtocol()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverState()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    return v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 168
    const-string v0, ""

    return-object v0
.end method

.method public invertChannel(IZ)V
    .locals 2
    .param p1, "channelAction"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelActionEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedRcInvertChannel(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;Z)V

    .line 386
    :cond_0
    return-void
.end method

.method public isChannelsMonitorEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelsMonitorEnabled:Z

    return v0
.end method

.method public isNeutralCalibrated()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mNeutralCalibrated:Z

    return v0
.end method

.method public isReceiverEnabled()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverEnabled:Z

    return v0
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 180
    return-void
.end method

.method public monitorChannels(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedRcMonitorChannels(Z)V

    .line 371
    :cond_0
    return-void
.end method

.method public onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "dictionary"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 192
    const-string v1, "RcDeviceControllerReceiverStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateReceiverState(Landroid/os/Bundle;)Z

    move-result v0

    .line 193
    .local v0, "updated":Z
    const-string v1, "RcDeviceControllerChannelsMonitorStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateChannelsMonitorState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 194
    const-string v1, "RcDeviceControllerChannelActionItemNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateChannelActionItems(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 195
    const-string v1, "RcDeviceControllerChannelValueNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateChannelValues(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 196
    const-string v1, "RcDeviceControllerCalibrationStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateCalibrationState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->notifyListener()V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->access$002(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;Z)Z

    .line 201
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->clear()V

    .line 51
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->notifyListener()V

    .line 52
    return-void
.end method

.method public resetCalibration()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedRcResetCalibration()V

    .line 398
    :cond_0
    return-void
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 29
    return-void
.end method

.method public startCalibration(III)V
    .locals 4
    .param p1, "calibrationType"    # I
    .param p2, "channelAction"    # I
    .param p3, "channelType"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_1

    .line 375
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mNeutralCalibrated:Z

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getCalibrationTypeEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelActionEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelTypeEnum(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedRcStartCalibration(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;)V

    .line 380
    :cond_1
    return-void
.end method

.method public update(Lcom/parrot/controller/devicecontrollers/ARBundle;)V
    .locals 1
    .param p1, "notificationDictionary"    # Lcom/parrot/controller/devicecontrollers/ARBundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    const-string v0, "RcDeviceControllerReceiverStateNotification"

    invoke-virtual {p1, v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateReceiverState(Landroid/os/Bundle;)Z

    .line 184
    const-string v0, "RcDeviceControllerChannelsMonitorStateNotification"

    invoke-virtual {p1, v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateChannelsMonitorState(Landroid/os/Bundle;)Z

    .line 185
    const-string v0, "RcDeviceControllerChannelActionItemNotification"

    invoke-virtual {p1, v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateChannelActionItems(Landroid/os/Bundle;)Z

    .line 186
    const-string v0, "RcDeviceControllerChannelValueNotification"

    invoke-virtual {p1, v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateChannelValues(Landroid/os/Bundle;)Z

    .line 187
    const-string v0, "RcDeviceControllerCalibrationStateNotification"

    invoke-virtual {p1, v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateCalibrationState(Landroid/os/Bundle;)Z

    .line 188
    return-void
.end method

.method public updateCalibrationState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "calibrationStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 317
    const/4 v9, 0x0

    .line 318
    .local v9, "shouldUpdate":Z
    if-eqz p1, :cond_4

    .line 319
    const-string v10, "RcDeviceControllerCalibrationStateNotificationCalibrationTypeKey"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 320
    .local v6, "calibrationTypeValue":I
    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;

    move-result-object v5

    .line 321
    .local v5, "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getCalibrationType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;)I

    move-result v4

    .line 322
    .local v4, "calibrationType":I
    iget v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCurrentCalibrationType:I

    if-eq v10, v4, :cond_0

    .line 323
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCurrentCalibrationType:I

    .line 324
    const/4 v9, 0x1

    .line 327
    :cond_0
    iget v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCurrentCalibrationType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 328
    const-string v10, "RcDeviceControllerCalibrationStateNotificationChannelActionKey"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 329
    .local v2, "actionValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v1

    .line 330
    .local v1, "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelAction(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;)I

    move-result v0

    .line 331
    .local v0, "action":I
    iget v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratingChannelAction:I

    if-eq v10, v0, :cond_1

    .line 332
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratingChannelAction:I

    .line 333
    const/4 v9, 0x1

    .line 337
    .end local v0    # "action":I
    .end local v1    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .end local v2    # "actionValue":I
    :cond_1
    const-string v10, "RcDeviceControllerCalibrationStateNotificationRequiredKey"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 338
    .local v8, "requiredChannels":I
    const-string v10, "RcDeviceControllerCalibrationStateNotificationCalibratedKey"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 339
    .local v3, "calibratedChannels":I
    iget v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mRequiredChannels:I

    if-ne v10, v8, :cond_2

    iget v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratedChannels:I

    if-eq v10, v3, :cond_3

    .line 340
    :cond_2
    iput v8, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mRequiredChannels:I

    .line 341
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mCalibratedChannels:I

    .line 342
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateRequiredAndCalibratedChannels()V

    .line 343
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-static {v10, v7}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->access$002(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;Z)Z

    .line 344
    const/4 v9, 0x1

    .line 347
    :cond_3
    const-string v10, "RcDeviceControllerCalibrationStateNotificationNeutralCalibratedKey"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v10

    if-ne v10, v7, :cond_5

    .line 348
    .local v7, "neutralCalibrated":Z
    :goto_0
    iget-boolean v10, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mNeutralCalibrated:Z

    if-eq v10, v7, :cond_4

    .line 349
    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mNeutralCalibrated:Z

    .line 350
    const/4 v9, 0x1

    .line 353
    .end local v3    # "calibratedChannels":I
    .end local v4    # "calibrationType":I
    .end local v5    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    .end local v6    # "calibrationTypeValue":I
    .end local v7    # "neutralCalibrated":Z
    .end local v8    # "requiredChannels":I
    :cond_4
    return v9

    .line 347
    .restart local v3    # "calibratedChannels":I
    .restart local v4    # "calibrationType":I
    .restart local v5    # "calibrationTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    .restart local v6    # "calibrationTypeValue":I
    .restart local v8    # "requiredChannels":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public updateChannelActionItems(Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "channelActionItemBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    const/4 v12, 0x0

    .line 252
    .local v12, "shouldUpdate":Z
    if-eqz p1, :cond_5

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, "channelAdded":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 255
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 256
    .local v7, "channelActionItem":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 257
    const-string v15, "RcDeviceControllerChannelActionItemNotificationActionKey"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, "actionValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v2

    .line 259
    .local v2, "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelAction(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;)I

    move-result v1

    .line 261
    .local v1, "action":I
    const/4 v15, -0x1

    if-eq v1, v15, :cond_0

    if-eqz v1, :cond_0

    .line 262
    const-string v15, "RcDeviceControllerChannelActionItemNotificationSupportedTypeKey"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 264
    .local v13, "supportedTypes":I
    const-string v15, "RcDeviceControllerChannelActionItemNotificationCalibratedTypeKey"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 265
    .local v6, "calibratedTypeValue":I
    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    move-result-object v5

    .line 266
    .local v5, "calibratedTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    invoke-static {v5}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;)I

    move-result v4

    .line 268
    .local v4, "calibratedType":I
    const-string v15, "RcDeviceControllerChannelActionItemNotificationInvertedKey"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v10, 0x1

    .line 270
    .local v10, "inverted":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-virtual {v15, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 271
    .local v9, "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    if-nez v9, :cond_1

    .line 272
    new-instance v9, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .end local v9    # "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    invoke-direct {v9, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;-><init>(I)V

    .line 273
    .restart local v9    # "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-virtual {v15, v1, v9}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->put(ILjava/lang/Object;)V

    .line 274
    const/4 v8, 0x1

    .line 276
    :cond_1
    invoke-virtual {v9, v13}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->setSupportedChannelTypes(I)V

    .line 277
    invoke-virtual {v9, v4}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->setCalibratedChannelType(I)V

    .line 278
    invoke-virtual {v9, v10}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->setInverted(Z)V

    .line 279
    const/4 v12, 0x1

    goto :goto_0

    .line 268
    .end local v9    # "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    .end local v10    # "inverted":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 284
    .end local v1    # "action":I
    .end local v2    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .end local v3    # "actionValue":I
    .end local v4    # "calibratedType":I
    .end local v5    # "calibratedTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    .end local v6    # "calibratedTypeValue":I
    .end local v7    # "channelActionItem":Landroid/os/Bundle;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "supportedTypes":I
    :cond_3
    if-eqz v8, :cond_4

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->updateRequiredAndCalibratedChannels()V

    .line 287
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-static {v14, v12}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->access$002(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;Z)Z

    .line 289
    .end local v8    # "channelAdded":Z
    :cond_5
    return v12
.end method

.method public updateChannelValues(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "channelValueBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    const/4 v6, 0x0

    .line 294
    .local v6, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 296
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 297
    .local v3, "channelInfo":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 298
    const-string v9, "RcDeviceControllerChannelValueNotificationActionKey"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, "actionValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v1

    .line 300
    .local v1, "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelAction(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;)I

    move-result v0

    .line 302
    .local v0, "action":I
    const-string v9, "RcDeviceControllerChannelValueNotificationValueKey"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v7

    .line 304
    .local v7, "value":S
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-virtual {v9, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 305
    .local v5, "rcChannelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    if-eqz v5, :cond_0

    .line 306
    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->setValue(I)V

    .line 307
    const/4 v6, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "action":I
    .end local v1    # "actionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .end local v2    # "actionValue":I
    .end local v3    # "channelInfo":Landroid/os/Bundle;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "rcChannelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    .end local v7    # "value":S
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelInfos:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->access$002(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;Z)Z

    .line 313
    :cond_2
    return v6
.end method

.method public updateChannelsMonitorState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "channelsMonitorStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 241
    const-string v2, "RcDeviceControllerChannelsMonitorStateNotificationStateKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 242
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelsMonitorEnabled:Z

    if-eq v2, v0, :cond_0

    .line 243
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mChannelsMonitorEnabled:Z

    .line 244
    const/4 v1, 0x1

    .line 247
    .end local v0    # "enabled":Z
    :cond_0
    return v1

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateReceiverState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "receiverStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 206
    const-string v8, "RcDeviceControllerReceiverStateNotificationStateKey"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 207
    .local v5, "stateValue":I
    invoke-static {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_RECEIVER_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_RECEIVER_STATE_ENUM;

    move-result-object v4

    .line 208
    .local v4, "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_RECEIVER_STATE_ENUM;
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    .line 209
    .local v1, "previousRcReceiverState":I
    sget-object v8, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_RC_RECEIVER_STATE_ENUM:[I

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_RECEIVER_STATE_ENUM;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 218
    const/4 v8, -0x1

    iput v8, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    .line 221
    :goto_0
    iget v8, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    if-eq v1, v8, :cond_2

    move v3, v6

    .line 223
    :goto_1
    const-string v8, "RcDeviceControllerReceiverStateNotificationProtocolKey"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "protocol":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverProtocol:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 225
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverProtocol:Ljava/lang/String;

    .line 226
    const/4 v3, 0x1

    .line 229
    :cond_0
    const-string v8, "RcDeviceControllerReceiverStateNotificationEnabledKey"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    if-ne v8, v6, :cond_3

    move v0, v6

    .line 230
    .local v0, "enabled":Z
    :goto_2
    iget-boolean v6, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverEnabled:Z

    if-eq v6, v0, :cond_1

    .line 231
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverEnabled:Z

    .line 232
    const/4 v3, 0x1

    .line 235
    .end local v0    # "enabled":Z
    .end local v1    # "previousRcReceiverState":I
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v4    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_RECEIVER_STATE_ENUM;
    .end local v5    # "stateValue":I
    :cond_1
    return v3

    .line 211
    .restart local v1    # "previousRcReceiverState":I
    .restart local v4    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_RECEIVER_STATE_ENUM;
    .restart local v5    # "stateValue":I
    :pswitch_0
    iput v7, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    goto :goto_0

    .line 214
    :pswitch_1
    iput v6, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->mReceiverState:I

    goto :goto_0

    :cond_2
    move v3, v7

    .line 221
    goto :goto_1

    .restart local v2    # "protocol":Ljava/lang/String;
    :cond_3
    move v0, v7

    .line 229
    goto :goto_2

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
