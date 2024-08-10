.class public Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;
.super Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;
.source "PhotoSettingsHudView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field protected static final PHOTO_COUNTDOWN_DURATION:I = 0xbb8

.field protected static final PHOTO_COUNTDOWN_INTERVAL:I = 0x64

.field protected static final PHOTO_FLASH_DURATION:I = 0x1f4


# instance fields
.field private final mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPhotoCaptureState:I

.field private mPhotoCount:I

.field private final mPhotoCountIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhotoCountText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPictureFormat:I

.field private final mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mTimerCountdownView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cameraSettingsModeListener"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    .line 57
    const v2, 0x7f0c003d

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    .line 49
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormat:I

    .line 51
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureState:I

    .line 53
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCount:I

    .line 59
    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    .line 60
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    .line 61
    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCountIcon:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0a04a1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCountText:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTimerCountdownView:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const v1, 0x7f070274

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageResource(I)V

    .line 67
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCountText:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->initButtonsAndMenus()V

    .line 72
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->updateView()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    return-object v0
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCountIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_0
    return-void
.end method

.method private initButtonsAndMenus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->updateMenuButton(I)V

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setOnItemClickListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x0

    const v2, 0x7f070275

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const v1, 0x7f070277

    invoke-virtual {v0, v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x2

    const v2, 0x7f070278

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x3

    const v2, 0x7f070276

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setMenuStateListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    return-void
.end method

.method private updatePhotoCaptureState(I)V
    .locals 3
    .param p1, "photoCaptureState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 186
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureState:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureState:I

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setEnabled(Z)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setEnabled(Z)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePhotoCount(I)V
    .locals 2
    .param p1, "photoCount"    # I

    .prologue
    .line 211
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCount:I

    if-eq p1, v0, :cond_0

    .line 212
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCount:I

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCountText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    return-void
.end method

.method private updatePictureFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v0, -0x1

    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->updateMenuButton(I)V

    .line 164
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    .line 165
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormat:I

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, p1

    .line 163
    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const v1, 0x7f11011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const v1, 0x7f11011c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public startEnterTransition()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mBottomBar:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 227
    return-void
.end method

.method public startExitTransition()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mPhotoCaptureButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mBottomBar:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateView()V

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPictureFormat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->updatePictureFormat(I)V

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPhotoCaptureState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->updatePhotoCaptureState(I)V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPhotoCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->updatePhotoCount(I)V

    .line 160
    return-void
.end method
