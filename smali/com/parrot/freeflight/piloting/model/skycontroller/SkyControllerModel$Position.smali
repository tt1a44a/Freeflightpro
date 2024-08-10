.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private final mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "skycontroller"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public updateBearing(F)Z
    .locals 2
    .param p1, "bearing"    # F

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->setBearing(F)V

    .line 387
    const/4 v0, 0x1

    .line 389
    :cond_0
    return v0
.end method

.method public updateLocation(DD)Z
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    .line 374
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, p3

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 378
    const/4 v0, 0x1

    .line 380
    :cond_1
    return v0
.end method
