.class public Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;
.super Lcom/parrot/freeflight/infos/DroneInfosUiController;
.source "QuadcopterInfosUiController.java"


# instance fields
.field private mLowerLeft:Landroid/graphics/drawable/LevelListDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLowerRight:Landroid/graphics/drawable/LevelListDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUpperLeft:Landroid/graphics/drawable/LevelListDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUpperRight:Landroid/graphics/drawable/LevelListDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V
    .locals 4
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
    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/parrot/freeflight/infos/DroneInfosUiController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V

    .line 36
    const v3, 0x7f0a01df

    invoke-virtual {p3, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, "droneImageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    .line 38
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 39
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f0a0517

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperLeft:Landroid/graphics/drawable/LevelListDrawable;

    .line 40
    const v3, 0x7f0a0518

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperRight:Landroid/graphics/drawable/LevelListDrawable;

    .line 41
    const v3, 0x7f0a02ed

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerRight:Landroid/graphics/drawable/LevelListDrawable;

    .line 42
    const v3, 0x7f0a02ec

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerLeft:Landroid/graphics/drawable/LevelListDrawable;

    .line 43
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->updateView()V

    .line 44
    return-void
.end method


# virtual methods
.method public getDrawableLevel([II)I
    .locals 3
    .param p1, "motorsState"    # [I
    .param p2, "motor"    # I

    .prologue
    .line 74
    const/4 v0, 0x1

    .line 76
    .local v0, "res":I
    aget v1, p1, p2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    :cond_0
    const/4 v0, 0x2

    .line 82
    :cond_1
    :goto_0
    return v0

    .line 78
    :cond_2
    aget v1, p1, p2

    if-nez v1, :cond_1

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final updateView()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->updateView()V

    .line 49
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v2, v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v2, :cond_3

    .line 51
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMotorsState()[I

    move-result-object v1

    .line 53
    .local v1, "motorsState":[I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->getDrawableLevel([II)I

    move-result v0

    .line 54
    .local v0, "level":I
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperLeft:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperLeft:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperLeft:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 57
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->getDrawableLevel([II)I

    move-result v0

    .line 58
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperRight:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperRight:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mUpperRight:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 61
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->getDrawableLevel([II)I

    move-result v0

    .line 62
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerRight:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerRight:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerRight:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 65
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->getDrawableLevel([II)I

    move-result v0

    .line 66
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerLeft:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerLeft:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;->mLowerLeft:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 70
    .end local v0    # "level":I
    .end local v1    # "motorsState":[I
    :cond_3
    return-void
.end method
