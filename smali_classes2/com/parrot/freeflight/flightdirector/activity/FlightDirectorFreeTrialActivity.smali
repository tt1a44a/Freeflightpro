.class public Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FlightDirectorFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;
    }
.end annotation


# static fields
.field private static final CONTENTS:[I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private static final IMAGES:[I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private static final PAGE_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FF4.FD.FreeTrialAct"

.field private static final TITLES:[I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private static final VIDEOS:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mBuyButton:Landroid/widget/Button;

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

.field private final mFlightDirectorRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

.field private mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPagerAdapter:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mStartButton:Landroid/widget/Button;

.field private mStartingTrial:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [I

    const v1, 0x7f11021c

    aput v1, v0, v2

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->TITLES:[I

    .line 54
    new-array v0, v3, [I

    const v1, 0x7f11021d

    aput v1, v0, v2

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->CONTENTS:[I

    .line 56
    new-array v0, v3, [I

    const v1, 0x7f070532

    aput v1, v0, v2

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->IMAGES:[I

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 111
    new-instance v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$2;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartingTrial:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    return-object v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->TITLES:[I

    return-object v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->CONTENTS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->displayTrialStartErrorIfAny(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->updateStartButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->IMAGES:[I

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->VIDEOS:[Ljava/lang/String;

    return-object v0
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method

.method private displayTrialStartErrorIfAny(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mRootLayout:Landroid/view/View;

    const v1, 0x7f110160

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f11068d

    new-instance v2, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$8;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mRootLayout:Landroid/view/View;

    const v1, 0x7f110326

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStartButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isPromotionActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public continueTrial()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->setResult(I)V

    .line 239
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->finish()V

    .line 240
    return-void
.end method

.method public getStatus()I
    .locals 2

    .prologue
    const/16 v0, 0xa

    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 272
    :goto_0
    :pswitch_0
    return v0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isPromotionActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const/4 v0, 0x2

    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartingTrial:Z

    if-eqz v1, :cond_3

    .line 254
    const/16 v0, 0xc

    goto :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->checkTrialValid()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 264
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->checkRegistration()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 258
    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    .line 266
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v7, 0x7f050042

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v5, 0x7f0c0031

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->setContentView(I)V

    .line 126
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    .line 127
    .local v1, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorRegistrationManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    .line 128
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 129
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/core/model/DroneModel;

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 131
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->performRegistrationCheck()V

    .line 133
    const v5, 0x7f0a027f

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mRootLayout:Landroid/view/View;

    .line 134
    const v5, 0x7f0a0527

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 135
    const v5, 0x7f0a052c

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/view/ViewPagerIndicator;

    .line 136
    .local v4, "viewPagerIndicator":Lcom/parrot/freeflight/view/ViewPagerIndicator;
    new-instance v5, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    .line 137
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 139
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;

    invoke-direct {v6, p0, v4}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 158
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 160
    const v5, 0x7f0a0466

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 162
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f0a01e6

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 163
    .local v2, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0a006c

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 164
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v5, 0x7f0a0056

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    .line 165
    const v5, 0x7f0a006e

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    .line 167
    new-instance v5, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$4;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$4;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$5;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$5;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$6;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$6;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 190
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 191
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 193
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 199
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v6, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$7;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$7;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 205
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mFlightDirectorRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 212
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->updateStartButton()V

    .line 213
    return-void
.end method
