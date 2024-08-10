.class public Lcom/parrot/freeflight/infos/DroneInfosActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DroneInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "product"

.field private static final ORIENTATION:Ljava/lang/String; = "ScreenOrientation"

.field private static final TAG:Ljava/lang/String; = "DroneInfosActivity"


# instance fields
.field private mDroneInfosTitle:Ljava/lang/String;

.field private mDroneName:Ljava/lang/String;

.field private mEndOrientation:I

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private mStartOrientation:I

.field private mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "product"

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->onBackPressed()Z

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mEndOrientation:I

    iget v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneName:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneInfosTitle:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->supportFinishAfterTransition()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const-string v0, "DroneInfosActivity"

    const-string v2, "onCreate "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_0

    const-string v0, "ScreenOrientation"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    .line 52
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mEndOrientation:I

    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 56
    .local v10, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 57
    if-eqz p1, :cond_2

    .line 58
    const-string v0, "product"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-nez v0, :cond_3

    if-eqz v10, :cond_3

    const-string v0, "product"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "product"

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 62
    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    .line 61
    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-nez v0, :cond_4

    .line 65
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 67
    :cond_4
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f0a0502

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 70
    .local v11, "titleTextView":Landroid/widget/TextView;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    .line 72
    const-string v0, "DroneName"

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "DroneNameText"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneName:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 75
    .local v12, "window":Landroid/view/Window;
    new-instance v9, Landroid/transition/Explode;

    invoke-direct {v9}, Landroid/transition/Explode;-><init>()V

    .line 76
    .local v9, "explodeTransition":Landroid/transition/Explode;
    const v0, 0x1020030

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Landroid/transition/Explode;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 77
    invoke-virtual {v12, v9}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 78
    invoke-virtual {v12, v9}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 79
    const v0, 0x7f0a0502

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/TransitionUtils;->makeSharedElementTextSizeTransition(Landroid/content/Context;I)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 80
    new-instance v0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;

    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 81
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f06021c

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;-><init>(FF)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 84
    .end local v9    # "explodeTransition":Landroid/transition/Explode;
    .end local v12    # "window":Landroid/view/Window;
    :cond_5
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 86
    .local v7, "backButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/parrot/freeflight/infos/DroneInfosActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$1;-><init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_6

    .line 93
    invoke-virtual {v7}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_6
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v8

    .line 97
    .local v8, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 98
    .local v1, "model":Lcom/parrot/freeflight/core/model/DroneModel;
    if-eqz v1, :cond_7

    .line 99
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneInfosTitle:Ljava/lang/String;

    .line 101
    :cond_7
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v4

    .line 102
    .local v4, "gamePadManager":Lcom/parrot/freeflight/gamepad/GamePadManager;
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v5

    .line 103
    .local v5, "deviceConnector":Lcom/parrot/freeflight/core/DeviceConnector;
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v6

    .line 104
    .local v6, "smartLocation":Lcom/parrot/freeflight/location/SmartLocationManager;
    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/parrot/freeflight/infos/DroneInfosBuilder;->buildUiController(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;)Lcom/parrot/freeflight/infos/DroneInfosUiController;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->destroy()V

    .line 144
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 9
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->pause()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->resume()V

    .line 126
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "ScreenOrientation"

    iget v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v0, "product"

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->onBackPressed()V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->start()V

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->stop()V

    .line 138
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mUiController:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->onTriggerEvent(FF)Z

    move-result v0

    return v0
.end method
