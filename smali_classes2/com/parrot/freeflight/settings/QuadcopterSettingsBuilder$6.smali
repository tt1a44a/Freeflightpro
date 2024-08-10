.class Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;
.super Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;
.source "QuadcopterSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildSafetySettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

.field final synthetic val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/RelativePositionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;->this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

    iput-object p3, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;->val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;
    .locals 6
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;-><init>()V

    .line 208
    .local v0, "gpsStatusesState":Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getReturnHomeStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->updateReturnHomeStatus(I)Z

    .line 209
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isGpsFixed()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getGpsSatelliteCount()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->updateDroneGpsStatus(ZI)Z

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "location":Landroid/location/Location;
    iget-object v2, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;->val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;->val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v1

    .line 214
    :cond_0
    if-eqz v1, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    :goto_2
    invoke-virtual {v0, v3, v2}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->updateControllerGpsStatus(ZF)Z

    .line 215
    return-object v0

    .end local v1    # "location":Landroid/location/Location;
    :cond_1
    move v2, v4

    .line 209
    goto :goto_0

    .restart local v1    # "location":Landroid/location/Location;
    :cond_2
    move v3, v4

    .line 214
    goto :goto_1

    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_2
.end method

.method protected bridge synthetic readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 203
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;->sendValue(Ljava/lang/Void;)V

    return-void
.end method

.method public sendValue(Ljava/lang/Void;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Void;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    return-void
.end method
