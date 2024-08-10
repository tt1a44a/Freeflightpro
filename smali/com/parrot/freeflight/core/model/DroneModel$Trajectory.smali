.class public Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
.super Ljava/lang/Object;
.source "DroneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DroneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trajectory"
.end annotation


# instance fields
.field private mDownSpeed:D

.field private mEastSpeed:D

.field private final mLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNorthSpeed:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    new-instance v0, Landroid/location/Location;

    const-string v1, "Target Location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    .line 1992
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 15
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "alt"    # D

    .prologue
    .line 1995
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;-><init>(DDDDDD)V

    .line 1996
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "alt"    # D
    .param p7, "northSpeed"    # D
    .param p9, "eastSpeed"    # D
    .param p11, "downSpeed"    # D

    .prologue
    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    new-instance v0, Landroid/location/Location;

    const-string v1, "Target Location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    .line 1999
    invoke-virtual/range {p0 .. p12}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->update(DDDDDD)Z

    .line 2000
    return-void
.end method


# virtual methods
.method public clone()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .locals 4

    .prologue
    .line 2063
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;-><init>()V

    .line 2064
    .local v0, "Trajectory":Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 2065
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 2066
    iget-object v1, v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 2067
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mNorthSpeed:D

    iput-wide v2, v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mNorthSpeed:D

    .line 2068
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mEastSpeed:D

    iput-wide v2, v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mEastSpeed:D

    .line 2069
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mDownSpeed:D

    iput-wide v2, v0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mDownSpeed:D

    .line 2070
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
    .line 1984
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->clone()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDownSpeed()D
    .locals 2

    .prologue
    .line 2046
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mDownSpeed:D

    return-wide v0
.end method

.method public getEastSpeed()D
    .locals 2

    .prologue
    .line 2042
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mEastSpeed:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorthSpeed()D
    .locals 2

    .prologue
    .line 2038
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mNorthSpeed:D

    return-wide v0
.end method

.method public update(DDDDDD)Z
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "alt"    # D
    .param p7, "northSpeed"    # D
    .param p9, "eastSpeed"    # D
    .param p11, "downSpeed"    # D

    .prologue
    .line 2009
    invoke-virtual/range {p0 .. p6}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->updateLocation(DDD)Z

    move-result v2

    .line 2010
    .local v2, "updated":Z
    iget-wide v4, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mNorthSpeed:D

    cmpl-double v3, v4, p7

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mEastSpeed:D

    cmpl-double v3, v4, p9

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mDownSpeed:D

    cmpl-double v3, v4, p11

    if-eqz v3, :cond_1

    .line 2011
    :cond_0
    iput-wide p7, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mNorthSpeed:D

    .line 2012
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mEastSpeed:D

    .line 2013
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mDownSpeed:D

    .line 2014
    const/4 v2, 0x1

    .line 2016
    :cond_1
    return v2
.end method

.method public update(Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;)Z
    .locals 14
    .param p1, "from"    # Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2003
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 2004
    .local v0, "fromLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    .line 2005
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getNorthSpeed()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getEastSpeed()D

    move-result-wide v10

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getDownSpeed()D

    move-result-wide v12

    move-object v1, p0

    .line 2004
    invoke-virtual/range {v1 .. v13}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->update(DDDDDD)Z

    move-result v1

    return v1
.end method

.method public updateLocation(DDD)Z
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 2020
    const/4 v0, 0x0

    .line 2021
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    .line 2022
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, p3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    .line 2023
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    cmpl-double v1, v2, p5

    if-eqz v1, :cond_1

    .line 2024
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 2025
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 2026
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p5, p6}, Landroid/location/Location;->setAltitude(D)V

    .line 2027
    const/4 v0, 0x1

    .line 2029
    :cond_1
    return v0
.end method
