.class public Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FlightPlanFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;
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

.field private static final PAGE_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FF4.FP.FreeTrialAct"

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

.field private final mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

.field private mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPagerAdapter:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mStartButton:Landroid/widget/Button;

.field private mStartingTrial:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x5

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->TITLES:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->CONTENTS:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->IMAGES:[I

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "53R-vP7JROo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    sput-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->VIDEOS:[Ljava/lang/String;

    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x7f110625
        0x7f110629
        0x7f110627
        0x7f11062b
        0x7f11062d
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x7f110624
        0x7f110628
        0x7f110626
        0x7f11062a
        0x7f11062c
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x7f0702c9
        0x7f0702ca
        0x7f0702cb
        0x7f0702cc
        0x7f0702cd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 112
    new-instance v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$2;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartingTrial:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    return-object v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->TITLES:[I

    return-object v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->CONTENTS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->displayTrialStartErrorIfAny(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->updateStartButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->IMAGES:[I

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->VIDEOS:[Ljava/lang/String;

    return-object v0
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method

.method private displayTrialStartErrorIfAny(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mRootLayout:Landroid/view/View;

    const v1, 0x7f110160

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f11068d

    new-instance v2, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$8;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mRootLayout:Landroid/view/View;

    const v1, 0x7f110326

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 281
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

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPromotionActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public continueTrial()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->finish()V

    .line 241
    return-void
.end method

.method public getStatus()I
    .locals 2

    .prologue
    const/16 v0, 0xa

    .line 245
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 276
    :goto_0
    :pswitch_0
    return v0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPromotionActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    const/4 v0, 0x2

    goto :goto_0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isTrialAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    const/4 v0, 0x3

    goto :goto_0

    .line 257
    :cond_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartingTrial:Z

    if-eqz v1, :cond_4

    .line 258
    const/16 v0, 0xc

    goto :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->checkTrialValid()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 268
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->checkRegistration()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 273
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 262
    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    .line 270
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 268
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

    .line 124
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v5, 0x7f0c0032

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->setContentView(I)V

    .line 127
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    .line 128
    .local v1, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanRegistrationManager()Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    .line 129
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 130
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/core/model/DroneModel;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 132
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->performRegistrationCheck()V

    .line 134
    const v5, 0x7f0a0281

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mRootLayout:Landroid/view/View;

    .line 135
    const v5, 0x7f0a0528

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 136
    const v5, 0x7f0a052d

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/view/ViewPagerIndicator;

    .line 137
    .local v4, "viewPagerIndicator":Lcom/parrot/freeflight/view/ViewPagerIndicator;
    new-instance v5, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    .line 138
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;

    invoke-direct {v6, p0, v4}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 159
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 161
    const v5, 0x7f0a0468

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f0a01e8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 164
    .local v2, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0a006f

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 165
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v5, 0x7f0a0057

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    .line 166
    const v5, 0x7f0a0070

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    .line 168
    new-instance v5, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$4;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$4;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$5;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$5;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$6;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$6;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 191
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 192
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 194
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 200
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v6, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$7;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$7;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 206
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 221
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 213
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->updateStartButton()V

    .line 214
    return-void
.end method
