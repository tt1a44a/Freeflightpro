.class public Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final CONFIRM_CHANGE_REQUEST_CODE:I = 0xa5

.field private static final CONFIRM_EXIT_REQUEST_CODE:I = 0xa4

.field private static final TAG:Ljava/lang/String; = "GamePadConfigActivity"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

.field private final mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePadState:I

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private mGamePadToSelect:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNoControllerLayout:Landroid/view/View;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRcControllerConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

.field private mRemoteConfigurationLayout:Landroid/view/View;

.field private mResetButton:Landroid/widget/Button;

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadState:I

    .line 54
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 263
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 285
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateNoControllerVisibility(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadState:I

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->setGamePad()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateResetButtonVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateConnectedStatus(I)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 321
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 2

    .prologue
    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_0
    return-void
.end method

.method private setGamePad()V
    .locals 4

    .prologue
    .line 242
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v2, v2, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRcControllerConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->switchConfigurationView(Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;)V

    .line 244
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRcControllerConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v2, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->setGamePad(Lcom/parrot/freeflight/gamepad/RcControllerGamePad;)V

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->switchConfigurationView(Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;)V

    .line 247
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserSettings;->getUserDrone()Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    .line 248
    .local v1, "userDrone":Lcom/parrot/freeflight/user/UserDrone;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 249
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v2, v3, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setGamePad(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    goto :goto_0

    .line 248
    .end local v0    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_1
.end method

.method private switchConfigurationView(Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;)V
    .locals 2
    .param p1, "configurationView"    # Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    if-eq v0, p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->setVisible(Z)V

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->stop()V

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->terminate()V

    .line 258
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->setVisible(Z)V

    .line 261
    :cond_0
    return-void
.end method

.method private updateConnectedStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadState:I

    if-eq v0, p1, :cond_0

    .line 220
    const-string v0, "GamePadConfigActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectedStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadState:I

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 235
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateResetButtonVisibility()V

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateNoControllerVisibility(Ljava/util/List;)V

    .line 238
    :cond_0
    return-void

    .line 224
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateGamePadConnected(Z)V

    goto :goto_0

    .line 228
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateGamePadConnected(Z)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateGamePadConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 198
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRemoteConfigurationLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    return-void

    .line 198
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateNoControllerVisibility(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 211
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mNoControllerLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mNoControllerLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateResetButtonVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 202
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadState:I

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 166
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 167
    sparse-switch p1, :sswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 170
    :sswitch_0
    const-string v1, "JOYSTICK_PARAMS_EXTRA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 171
    .local v0, "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->saveGamePadPreferences(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    goto :goto_0

    .line 174
    .end local v0    # "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    :sswitch_1
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 177
    :sswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadToSelect:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 178
    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadToSelect:Lcom/parrot/freeflight/gamepad/GamePad;

    goto :goto_0

    .line 183
    :cond_1
    const/16 v1, 0xa5

    if-ne p1, v1, :cond_0

    .line 184
    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadToSelect:Lcom/parrot/freeflight/gamepad/GamePad;

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xa4 -> :sswitch_1
        0xa5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRcControllerConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xa4

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 70
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 71
    const v0, 0x7f0a028f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mNoControllerLayout:Landroid/view/View;

    .line 72
    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRemoteConfigurationLayout:Landroid/view/View;

    .line 73
    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .line 74
    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRcControllerConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .line 75
    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$2;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setActivity(Landroid/app/Activity;)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRcControllerConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->setVisibility(I)V

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateConnectedStatus(I)V

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$3;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 104
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->fixPreLollipopTheme()V

    .line 105
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$4;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 115
    const v0, 0x7f0a0191

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    const v0, 0x7f0a0498

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    const v0, 0x7f0a0499

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateResetButtonVisibility()V

    .line 124
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 151
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->terminate()V

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectDefaultGamePad()V

    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 155
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_0

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 159
    .end local v0    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 162
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
    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->start()V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mCurrentConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;->stop()V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->stopScan()V

    .line 146
    :cond_1
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->onTriggerEvent(FF)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
