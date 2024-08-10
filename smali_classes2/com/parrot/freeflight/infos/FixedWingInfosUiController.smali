.class public Lcom/parrot/freeflight/infos/FixedWingInfosUiController;
.super Lcom/parrot/freeflight/infos/DroneInfosUiController;
.source "FixedWingInfosUiController.java"


# instance fields
.field private final mDroneImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMotorDrawable:Landroid/graphics/drawable/LevelListDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "window"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "smartLocation"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "droneLayoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/parrot/freeflight/infos/DroneInfosUiController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V

    .line 33
    const v3, 0x7f0a01df

    invoke-virtual {p3, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mDroneImageView:Landroid/widget/ImageView;

    .line 34
    iget-object v3, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mDroneImageView:Landroid/widget/ImageView;

    const v4, 0x7f07025a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    const v3, 0x7f0a0435

    invoke-virtual {p3, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "batteryTextView":Landroid/widget/TextView;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v3, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mDroneImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 38
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 39
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 40
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f0a031d

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mMotorDrawable:Landroid/graphics/drawable/LevelListDrawable;

    .line 41
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->updateView()V

    .line 43
    .end local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawableLevel(I)I
    .locals 1
    .param p1, "motorsState"    # I

    .prologue
    .line 61
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 62
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x2

    .line 67
    :goto_0
    return v0

    .line 64
    :cond_1
    if-nez p1, :cond_2

    .line 65
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final updateView()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->updateView()V

    .line 48
    iget-object v2, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v2, v2, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v2, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMotorsState()I

    move-result v1

    .line 52
    .local v1, "motorsState":I
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->getDrawableLevel(I)I

    move-result v0

    .line 53
    .local v0, "level":I
    iget-object v2, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mMotorDrawable:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mMotorDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;->mMotorDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 57
    .end local v0    # "level":I
    .end local v1    # "motorsState":I
    :cond_0
    return-void
.end method
