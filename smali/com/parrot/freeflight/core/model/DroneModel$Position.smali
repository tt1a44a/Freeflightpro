.class public Lcom/parrot/freeflight/core/model/DroneModel$Position;
.super Ljava/lang/Object;
.source "DroneModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DroneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private final mLocation:Landroid/location/Location;

.field private mPitch:D

.field private mRoll:D

.field private mYaw:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Landroid/location/Location;

    const-string v1, "Drone Location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    .line 589
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Landroid/location/Location;

    const-string v1, "Drone Location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 593
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 594
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p5, p6}, Landroid/location/Location;->setAltitude(D)V

    .line 595
    return-void
.end method


# virtual methods
.method public clone()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 4

    .prologue
    .line 703
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>()V

    .line 704
    .local v0, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 705
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 706
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 707
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 708
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mPitch:D

    iput-wide v2, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mPitch:D

    .line 709
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mRoll:D

    iput-wide v2, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mRoll:D

    .line 710
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mYaw:D

    iput-wide v2, v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mYaw:D

    .line 711
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->clone()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPitch()D
    .locals 2

    .prologue
    .line 686
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mPitch:D

    return-wide v0
.end method

.method public getRoll()D
    .locals 2

    .prologue
    .line 679
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mRoll:D

    return-wide v0
.end method

.method public getYaw()D
    .locals 2

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mYaw:D

    return-wide v0
.end method

.method public update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z
    .locals 11
    .param p1, "from"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 598
    const/4 v10, 0x0

    .line 599
    .local v10, "updated":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 600
    .local v0, "fromLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateLocation(DDDJ)Z

    move-result v1

    or-int/2addr v10, v1

    .line 601
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    move-result v1

    or-int/2addr v10, v1

    .line 602
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateRoll(D)Z

    move-result v1

    or-int/2addr v10, v1

    .line 603
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updatePitch(D)Z

    move-result v1

    or-int/2addr v10, v1

    .line 604
    return v10
.end method

.method public updateLocation(DDDJ)Z
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "time"    # J

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    .line 614
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, p3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    .line 615
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    cmpl-double v1, v2, p5

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    .line 616
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v1, v2, p7

    if-eqz v1, :cond_1

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 618
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 619
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p5, p6}, Landroid/location/Location;->setAltitude(D)V

    .line 620
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p7, p8}, Landroid/location/Location;->setTime(J)V

    .line 621
    const/4 v0, 0x1

    .line 624
    :cond_1
    return v0
.end method

.method public updatePitch(D)Z
    .locals 5
    .param p1, "pitch"    # D

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "updated":Z
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mPitch:D

    cmpl-double v1, v2, p1

    if-eqz v1, :cond_0

    .line 657
    iput-wide p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mPitch:D

    .line 658
    const/4 v0, 0x1

    .line 660
    :cond_0
    return v0
.end method

.method public updateRoll(D)Z
    .locals 5
    .param p1, "roll"    # D

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "updated":Z
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mRoll:D

    cmpl-double v1, v2, p1

    if-eqz v1, :cond_0

    .line 645
    iput-wide p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mRoll:D

    .line 646
    const/4 v0, 0x1

    .line 648
    :cond_0
    return v0
.end method

.method public updateYaw(D)Z
    .locals 5
    .param p1, "yaw"    # D

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "updated":Z
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mYaw:D

    cmpl-double v1, v2, p1

    if-eqz v1, :cond_0

    .line 633
    iput-wide p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Position;->mYaw:D

    .line 634
    const/4 v0, 0x1

    .line 636
    :cond_0
    return v0
.end method
