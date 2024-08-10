.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoystickState"
.end annotation


# instance fields
.field private mUpdated:Z

.field private mXAxisValue:I

.field private mYAxisValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumed()V
    .locals 1

    .prologue
    .line 1491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mUpdated:Z

    .line 1492
    return-void
.end method

.method public getXAxisValue()I
    .locals 1

    .prologue
    .line 1483
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mXAxisValue:I

    return v0
.end method

.method public getYAxisValue()I
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mYAxisValue:I

    return v0
.end method

.method public isUpdated()Z
    .locals 1

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mUpdated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mUpdated:Z

    if-eqz v0, :cond_0

    .line 1497
    const-string v0, "[%d, %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mXAxisValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mYAxisValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Not Updated"

    goto :goto_0
.end method

.method public update(II)Z
    .locals 2
    .param p1, "xAxisValue"    # I
    .param p2, "yAxisValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 1451
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mXAxisValue:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mYAxisValue:I

    if-eq v1, p2, :cond_1

    .line 1452
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mXAxisValue:I

    .line 1453
    iput p2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mYAxisValue:I

    .line 1454
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mUpdated:Z

    .line 1457
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateXAxisValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 1461
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mXAxisValue:I

    if-eq v1, p1, :cond_0

    .line 1462
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mXAxisValue:I

    .line 1463
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mUpdated:Z

    .line 1466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateYAxisValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 1470
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mYAxisValue:I

    if-eq v1, p1, :cond_0

    .line 1471
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mYAxisValue:I

    .line 1472
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->mUpdated:Z

    .line 1475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
