.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
.super Ljava/lang/Object;
.source "BlackboxRecordEntryThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordMessage"
.end annotation


# instance fields
.field private mAppCommand:I

.field private mDeviceLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMppButonAction:I

.field private mMppPcmd:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTimestamp:D


# direct methods
.method public constructor <init>(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V
    .locals 1
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "deviceLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "mppButonAction"    # I
    .param p7, "mppPcmd"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "appCommand"    # I

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mTimestamp:D

    .line 289
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 290
    iput-object p4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDeviceLocation:Landroid/location/Location;

    .line 291
    iput-object p5, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 292
    iput p6, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppButonAction:I

    .line 293
    iput-object p7, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppPcmd:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    .line 294
    iput p8, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mAppCommand:I

    .line 295
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mTimestamp:D

    .line 299
    iput-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 300
    iput-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDeviceLocation:Landroid/location/Location;

    .line 301
    iput-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppButonAction:I

    .line 303
    iput-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppPcmd:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mAppCommand:I

    .line 305
    return-void
.end method

.method public getAppCommand()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mAppCommand:I

    return v0
.end method

.method public getDeviceLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDeviceLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getDroneModel()Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method public getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method public getMppButonAction()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppButonAction:I

    return v0
.end method

.method public getMppPcmd()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppPcmd:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    return-object v0
.end method

.method public getTimestamp()D
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mTimestamp:D

    return-wide v0
.end method

.method public setAppCommand(I)V
    .locals 0
    .param p1, "appCommand"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mAppCommand:I

    .line 366
    return-void
.end method

.method public setDeviceLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "deviceLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDeviceLocation:Landroid/location/Location;

    .line 350
    return-void
.end method

.method public setDroneModel(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 345
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 346
    return-void
.end method

.method public setGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 353
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 354
    return-void
.end method

.method public setMppButonAction(I)V
    .locals 0
    .param p1, "mppButonAction"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppButonAction:I

    .line 358
    return-void
.end method

.method public setMppPcmd(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V
    .locals 0
    .param p1, "mppPcmd"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 361
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mMppPcmd:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    .line 362
    return-void
.end method

.method public setTimestamp(D)V
    .locals 1
    .param p1, "timestamp"    # D

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->mTimestamp:D

    .line 342
    return-void
.end method
