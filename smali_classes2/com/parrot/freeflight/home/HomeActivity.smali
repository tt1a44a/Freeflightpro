.class public Lcom/parrot/freeflight/home/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final ONCE_SHOW_SPLASH_CONNECT:Ljava/lang/String; = "ONCE_SHOW_SPLASH_CONNECT"


# instance fields
.field private final mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mUIController:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 174
    new-instance v0, Lcom/parrot/freeflight/home/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/HomeActivity$1;-><init>(Lcom/parrot/freeflight/home/HomeActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/HomeActivity;)Lcom/parrot/freeflight/core/CoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/home/HomeUIController;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 146
    :goto_0
    const-string v0, "FF4.Home"

    const-string v1, "The user wants to exit the application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->stop()V

    .line 150
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/HomeActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v1, "FF4.Home.Life"

    const-string v4, "onCreate Home"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f0c003b

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/HomeActivity;->setContentView(I)V

    .line 49
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    .line 51
    const v1, 0x7f0a0505

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 52
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/home/HomeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 53
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v12

    .line 54
    .local v12, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v12, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 57
    :cond_0
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 58
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f1104b0

    const v5, 0x7f1104af

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 61
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 63
    const v1, 0x7f0a019b

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/NavigationView;

    .line 64
    .local v8, "navigationView":Landroid/support/design/widget/NavigationView;
    new-instance v1, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 66
    new-instance v4, Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget-object v11, p0, Lcom/parrot/freeflight/home/HomeActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    move-object v5, p0

    move-object v6, p1

    move-object v9, v3

    move-object v10, v2

    invoke-direct/range {v4 .. v11}, Lcom/parrot/freeflight/home/HomeUIController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/util/PermissionChecker;)V

    iput-object v4, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    .line 68
    const-string v1, "ONCE_SHOW_SPLASH_CONNECT"

    invoke-static {v1}, Ljonathanfinerty/once/Once;->beenDone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-static {p0}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    :cond_1
    const-string v1, "ONCE_SHOW_SPLASH_CONNECT"

    invoke-static {v1}, Ljonathanfinerty/once/Once;->markDone(Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->checkVersionUpdate(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "FF4.Home.Life"

    const-string v1, "onDestroy Home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->destroy()V

    .line 125
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 126
    return-void
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
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/home/HomeUIController;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->onKeyUp(ILandroid/view/KeyEvent;)Z

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
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->pause()V

    .line 103
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 104
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "FF4.Home.Life"

    const-string v1, "onResume Home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->resume()V

    .line 98
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "FF4.Home.Life"

    const-string v1, "onStart Home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->start()V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/HomeActivity;->isChangingConfigurations()Z

    move-result v0

    .line 110
    .local v0, "isChangingConfiguration":Z
    const-string v1, "FF4.Home.Life"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop Home, config change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/HomeUIController;->stop()V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 114
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->stopPudDownload()V

    .line 115
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 116
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->onTriggerEvent(FF)Z

    move-result v0

    return v0
.end method
